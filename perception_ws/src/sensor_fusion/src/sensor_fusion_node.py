#! /usr/bin/env python
import rospy
import actionlib

import tf2_ros
import message_filters
from sensor_msgs.msg import Image, CameraInfo, PointCloud2
from sensor_fusion.msg import Obstacles,ObstacleRange,ObstacleRanges, BoundingBoxes
from sensor_fusion.msg import CheckForObjectsAction,CheckForObjectsGoal,CheckForObjectsResult
from sensor_fusion.srv import ObstacleInfo, ObstacleInfoResponse
#from sensor_fusion.action import CheckForObjects

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


def sensorFusionCallback(image, camera_info, velodyne,  bbox_client,  obstacle_client, obstacle_pub):
    global CAMERA_MODEL, FIRST_TIME, TF_BUFFER, TF_LISTENER, DEBUG, BBOX
    
    rospy.loginfo('arrive at sensorfusion callback')
    Img = CheckForObjectsGoal()
    Img.image = image
    Img.id = 0
    bbox_client.wait_for_server()
    bbox_client.send_goal(Img)
    bbox_client.wait_for_result()    
    bboxes = bbox_client.get_result()      
    print('get yolo result') 

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
    # print("point 2D", points2D)
    # print("point 3d", points3D)

    if np.size(points2D) > 0 :
        inrange = np.where((points2D[:, 0] >= 0) &
                           (points2D[:, 1] >= 0) &
                           (points2D[:, 0] < img.shape[1]) &
                           (points2D[:, 1] < img.shape[0]))
        points2D = points2D[inrange[0]].round().astype('int')

    obstacleRangesMsg = ObstacleRanges()
    obstacle_range_msg = ObstacleRange()

    print("point_2D after inrange", points2D)
    for bbox in bboxes.bounding_boxes.bounding_boxes:
        print("box_info", bbox.xmax, bbox.xmin, bbox.ymax,bbox.ymin)        
        filter = np.where((points2D[:,0] <= bbox.xmax)&
                        (points2D[:,0] >= bbox.xmin)&
                        (points2D[:,1] <= bbox.ymax)&
                        (points2D[:,1] >= bbox.ymin))
        point_cloud = points3D[filter[0]]
        point_cloud = points3D
        xyz_min = np.amin(point_cloud[0:3,:], axis = 0)
        xyz_max = np.amax(point_cloud[0:3,:], axis = 0)
        [obstacle_range_msg.xmin, obstacle_range_msg.ymin, obstacle_range_msg.zmin, _] = xyz_min
        [obstacle_range_msg.xmax, obstacle_range_msg.ymax, obstacle_range_msg.zmax, _] = xyz_max
        obstacle_range_msg.Class = bbox.Class
        obstacle_range_msg.points = Point(point_cloud[:,0], point_cloud[:, 1], point_cloud[:, 2])
        obstacleRangesMsg.obstacle_ranges.append(obstacle_range_msg)

        if DEBUG:
            cv2.rectangle(img, (bbox.xmin, bbox.ymin),(bbox.xmax,bbox.ymax), (36,255,12), 2)
            cv2.putText(img, bbox.Class, (bbox.xmin, bbox.ymin), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)
            
    if DEBUG:   
        cv2.imshow('test',img)
    print('processed')
    obstacles = None
    rospy.wait_for_service('/obstacles_range')
    print('waitting for srv')
    try:
        obstacles = obstacle_client(obstacleRangesMsg)
    except rospy.ServiceException as e:
        pass

    if not obstacles: obstacle_pub.publish(obstacles)
    print("published!")


def listener(camera_info, image_color, velodyne_points, bounding_boxes,obstacle_range, obstacle_info):
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

    bbox_client = actionlib.SimpleActionClient(bounding_boxes, CheckForObjectsAction)
    obstacle_client = rospy.ServiceProxy(obstacle_range, ObstacleInfo)

    obstacle_pub = rospy.Subscriber(obstacle_info, Obstacles) if obstacle_info else None

    # Synchronize the topics by time
    ats.registerCallback(sensorFusionCallback,  bbox_client, obstacle_client, obstacle_pub)

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
    bounding_boxes = rospy.get_param('bounding_boxes_topic','/darknet_ros/check_for_objects')

    obstacle_range = rospy.get_param('obstacle_range_topic','/obstacles_range')
    # publish topics
    obstacle_info = rospy.get_param('obstacle_info_topic','/obstacles')

    # Start subscriber
    listener(camera_info, image_color, velodyne_points, bounding_boxes, obstacle_range, obstacle_info)