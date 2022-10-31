#! /usr/bin/env python
from array import array
from ast import If
import rospy

import tf2_ros
import message_filters
from sensor_msgs.msg import Image, CameraInfo, PointCloud2
from sensor_fusion.msg import Obstacles,ObstacleRange,ObstacleRanges, BoundingBoxes, ObjectCount

import ros_numpy
import image_geometry
from tf2_sensor_msgs.tf2_sensor_msgs import do_transform_cloud
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Point
import numpy as np
import cv2
# import queue
# Global variables
FIRST_TIME = True
TF_BUFFER = None
TF_LISTENER = None
CAMERA_MODEL = image_geometry.PinholeCameraModel()
CV_BRIDGE = CvBridge()
DEBUG = True
BBOX = []
FOUND = False

def testCallback(a, b, c):
    rospy.loginfo('test!test!')


def obstacle_callback(obstacle_info):
    obstacle_pub = rospy.Publisher('obstacle',Obstacles)
    obstacle_pub.publish(obstacle_info)

def bboxClient(bboxes):
    global BBOX
    # rospy.wait_for_service('/darnet_ros/bounding_boxes')#bbox_service
    # BBOX = bboxes.bounding_boxes

def bboxCallback(bboxes):
    global BBOX
    BBOX = bboxes

def foundCallback(count): 
    global FOUND   
    if count.count > 0: FOUND = True

def sensorFusionCallback(image, camera_info, velodyne, image_pub, bbox_sub, found_object, obstacle_pub, obstacle_sub):
    global CAMERA_MODEL, FIRST_TIME, TF_BUFFER, TF_LISTENER, DEBUG, BBOX
    
    rospy.loginfo('arrive at sensorfusion callback')
    image_pub.publish(image)
    rospy.loginfo(image.header.stamp)
    print("image_header" ,image.header.stamp)
    if(BBOX != []):
        print("BBOX header",BBOX.image_header.stamp)
        while BBOX.image_header.stamp != image.header.stamp:
            print("image_header" ,image.header.stamp)
            print("BBOX header",BBOX.image_header.stamp)
            print("not match ")
            rospy.sleep(0.1)
            

    if FIRST_TIME:
        FIRST_TIME = False

        # Setup camera model
        rospy.loginfo('Setting up camera model')
        CAMERA_MODEL.fromCameraInfo(camera_info)

        # TF listener
        rospy.loginfo('Setting up static transform listener')
        TF_BUFFER = tf2_ros.Buffer()
        TF_LISTENER = tf2_ros.TransformListener(TF_BUFFER)
    
    # ros image msg to cv2
    try:
        img = CV_BRIDGE.imgmsg_to_cv2(image, 'bgr8')        
    except CvBridgeError as e:
        rospy.logerr(e)
        return

    # Transform the point cloud
    try:
        transform = TF_BUFFER.lookup_transform('world', 'velodyne', rospy.Time())
        velodyne = do_transform_cloud(velodyne, transform)
    except tf2_ros.LookupException:
        pass

    # Extract points from message
    points3D = ros_numpy.point_cloud2.pointcloud2_to_array(velodyne)
    points3D = np.asarray(points3D.tolist())

# Group all beams together and pick the first 4 columns for X, Y, Z, intensity.
    points3D = points3D.reshape(-1, 9)[:, :4]

    # Select field-of-view
    inrange = np.where((points3D[:, 0] > 1.0) &   # backward -> forward as value increases    # [1.5, 5.5]
                       (points3D[:, 0] < 20) &
                       (points3D[:, 1] > -10) &  # left -> right as value increases          # [-1.7, 2.7]
                       (points3D[:, 1] < 10) &
                       (points3D[:, 2] > -0.7) &  # buttom -> top as value increases          # [-0.7, 2]
                       (points3D[:, 2] <  2))
    points3D = points3D[inrange[0]]


    # Project to 2D and filter points within image boundaries
    points2D = [ CAMERA_MODEL.project3dToPixel(point) for point in points3D[:, :3] ]
    points2D = np.asarray(points2D)

    if np.size(points2D) > 0 :
        inrange = np.where((points2D[:, 0] >= 0) &
                           (points2D[:, 1] >= 0) &
                           (points2D[:, 0] < img.shape[1]) &
                           (points2D[:, 1] < img.shape[0]))
        points2D = points2D[inrange[0]].round().astype('int')

    obstacleRangesMsg = ObstacleRanges()
    # obstacleRangesMsg.header.stamp = rospy.Time.now()
    # obstacleRangesMsg.header.frame_id = "Obstacle range"
    obstacle_range_msg = ObstacleRange()

    
    global FOUND
    if not FOUND: 
        print("nothing detect")
        obstacle_pub.publish(obstacleRangesMsg)
        return
    for bbox in BBOX.bounding_boxes:
        print("box_info", bbox.xmax, bbox.xmin, bbox.ymax,bbox.ymin)
        filter = np.where((points2D[:,0] <= bbox.xmax)&
                        (points2D[:,0] <= bbox.xmin)&
                        (points2D[:,1] <= bbox.ymax)&
                        (points2D[:,1] >= bbox.ymin))

        print(filter[0])
        print(filter)
        if filter[0].size == 0:
            print('bad')
            continue
        
        point_cloud = points3D[filter[0]]
        xyz_min = np.amin(point_cloud[0:3,:], axis = 0)
        xyz_max = np.amax(point_cloud[0:3,:], axis = 0)
        [obstacle_range_msg.xmin, obstacle_range_msg.ymin, obstacle_range_msg.zmin] = xyz_min
        [obstacle_range_msg.xmax, obstacle_range_msg.ymax, obstacle_range_msg.zmax] = xyz_max
        obstacle_range_msg.Class = BBOX.Class
        obstacle_range_msg.point = Point(point_cloud[:,0], point_cloud[:, 1], point_cloud[:, 2])
        obstacleRangesMsg.obstacle_ranges.append(obstacle_range_msg)

    #     if DEBUG:
    #         cv2.rectangle(img, (bbox.xmin, bbox.ymin),(bbox.xmax,bbox.ymax), (36,255,12), 2)
    #         cv2.putText(img, bbox.Class, (bbox.xmin, bbox.ymin), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)
            
    # if DEBUG:   
    #     cv2.imshow('test',img)
    
    obstacle_pub.publish(obstacleRangesMsg)
    print("published!")


def listener(camera_info, image_color, velodyne_points, bounding_boxes, found_object, obstacle_info, yolo_src, obstacle_range):
    # Start node
    rospy.init_node('sensor_fusion', anonymous=True)
    rospy.loginfo('CameraInfo topic: %s' % camera_info)
    rospy.loginfo('Image topic: %s' % image_color)
    rospy.loginfo('PointCloud2 topic: %s' % velodyne_points)

    # Subscribe to topics
    info_sub = message_filters.Subscriber(camera_info, CameraInfo)
    image_sub = message_filters.Subscriber(image_color, Image)
    velodyne_sub = message_filters.Subscriber(velodyne_points, PointCloud2)

    ats = message_filters.ApproximateTimeSynchronizer(
        [image_sub, info_sub, velodyne_sub], queue_size=5, slop=0.1)

    image_pub = rospy.Publisher(yolo_src, Image, queue_size=5)
    bbox_sub = rospy.Subscriber(bounding_boxes, BoundingBoxes, bboxCallback)
    count_sub = rospy.Subscriber(found_object,ObjectCount, foundCallback)
    obstacle_pub = rospy.Publisher(obstacle_range, ObstacleRanges, queue_size=5)

    if obstacle_info: obstacle_sub = rospy.Subscriber(obstacle_info, Obstacles, obstacle_callback)

    # Synchronize the topics by time
    ats.registerCallback(sensorFusionCallback, image_pub, bbox_sub, count_sub, obstacle_pub, None)
    # rospy.wait_for_service('')#yolo_bounding boxes
    # try:
    #     proxy = rospy.ServiceProxy()
    #     proxy()
    # except rospy.ServiceException as e:
    #     rospy.loginfo(e)


    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo('Shutting down')

if __name__ == '__main__':

    yolo_src = None
    obstacle_info = None
    
    # subscribe topics
    camera_info = rospy.get_param('camera_info_topic', '/camera/color/camera_info')
    image_color = rospy.get_param('image_color_topic', '/camera/color/image_raw')
    velodyne_points = rospy.get_param('velodyne_points_topic','/os_cloud_node/points')
    bounding_boxes = rospy.get_param('bounding_boxes_topic','/darknet_ros/bounding_boxes')
    found_object = rospy.get_param('found_object_topic','/darknet_ros/found_object')
    #obstacle_info = rospy.get_param('obstacle_info_topic')

    # publish topics
    yolo_src = 'image_synchro'
    obstacle_range = 'obstacle_range'

    # Start subscriber
    listener(camera_info, image_color, velodyne_points, bounding_boxes, found_object, obstacle_info, yolo_src, obstacle_range)