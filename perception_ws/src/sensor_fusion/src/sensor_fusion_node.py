#! /usr/bin/env python
# import python pkg
import cv2
import time
import numpy as np

# import ros pkg
import rospy
import tf2_ros
import actionlib
import ros_numpy
import message_filters
import image_geometry
from geometry_msgs.msg import Point
from cv_bridge import CvBridge, CvBridgeError
from tf2_sensor_msgs.tf2_sensor_msgs import do_transform_cloud
from sensor_msgs.msg import Image, CameraInfo, PointCloud2

# import message/action type
# action type with yolo
from sensor_fusion.msg import fusion2yoloAction, fusion2yoloGoal
# message type with yolo
# action type with lidar
from sensor_fusion.msg import fusion2lidarAction, fusion2lidarGoal
# message type with lidar
from sensor_fusion.msg import Obstacle, Obstacles


FIRST_TIME = True
TF_BUFFER = None
TF_LISTENER = None
CAMERA_MODEL = image_geometry.PinholeCameraModel()
CV_BRIDGE = CvBridge()
last_time = 0


def sensorFusionCallback(image, camera_info, velodyne,  yolo_client,  lidar_client, obstacle_pub):
    global CAMERA_MODEL, FIRST_TIME, TF_BUFFER, TF_LISTENER, last_time
    rospy.loginfo('arrive at sensorfusion callback')

    # initialization
    if FIRST_TIME:
        FIRST_TIME = False

        # Setup camera model
        CAMERA_MODEL.fromCameraInfo(camera_info)

        # TF listener
        TF_BUFFER = tf2_ros.Buffer()
        TF_LISTENER = tf2_ros.TransformListener(TF_BUFFER)

    # send img to yolo and receive 2D bbox
    img_synced = fusion2yoloGoal()
    img_synced.id = 0
    img_synced.image = image
    yolo_client.wait_for_server()
    print("successfully wait for server")
    yolo_client.send_goal(img_synced)
    yolo_client.wait_for_result()
    print("successfully wait for result")
    yolo_bboxes = yolo_client.get_result()

    # send point clouds to lidar and receive 3D bbox
    pcl_synced = fusion2lidarGoal()
    pcl_synced.point_cloud = velodyne
    lidar_client.wait_for_server()
    lidar_client.send_goal(pcl_synced)
    lidar_client.wait_for_result()
    lidar_bboxes = lidar_client.get_result()
    

    print("yolo res", yolo_bboxes)
    print("lidar res", lidar_bboxes)
    print("FPS", 1 / (time.time() - last_time))
    last_time = time.time()

    # # parse lidar_bboxes to 8 points each
    # lidar_bboxes_points = None

    # # transform lidar_bboxes_points from lidar frame to camera frame
    # try:
    #     transform = TF_BUFFER.lookup_transform(
    #         'world', 'velodyne', rospy.Time())
    #     lidar_bboxes_points = do_transform_cloud(
    #         lidar_bboxes_points, transform)
    # except tf2_ros.LookupException:
    #     pass

    # # project lidar_bboxes_points from 3D to 2D
    # lidar_bboxes_points_2D = [CAMERA_MODEL.project3dToPixel(
    #     point) for point in lidar_bboxes_points[:, :3]]

    # # campare lidar_bboxes_points_2D with yolo_bboxes and output idx
    # idx = list()
    # final_class = yolo_bboxes[idx]
    # final_bboxes = lidar_bboxes[idx]
    # final_res = [[final_class, final_bboxes]]

    # print("finished!")


def listener(camera_info, image_color, velodyne_points, yolo_bboxes, lidar_bboxes, obstacle_meas):
    # start node
    rospy.init_node('sensor_fusion', anonymous=True)
    rospy.loginfo('CameraInfo topic: %s' % camera_info)
    rospy.loginfo('Image topic: %s' % image_color)
    rospy.loginfo('PointCloud2 topic: %s' % velodyne_points)

    # subscribe topics
    info_sub = message_filters.Subscriber(camera_info, CameraInfo)
    image_sub = message_filters.Subscriber(image_color, Image)
    velodyne_sub = message_filters.Subscriber(velodyne_points, PointCloud2)

    # synchronize topics
    ats = message_filters.ApproximateTimeSynchronizer(
        [image_sub, info_sub, velodyne_sub], queue_size=5, slop=0.1)

    # action initialization
    yolo_client = actionlib.SimpleActionClient(
        yolo_bboxes, fusion2yoloAction)
    lidar_client = actionlib.SimpleActionClient(
        lidar_bboxes, fusion2lidarAction)

    # publish topics
    obstacle_pub = rospy.Subscriber(obstacle_meas, Obstacles)

    ats.registerCallback(sensorFusionCallback,  yolo_client,
                         lidar_client, obstacle_pub)

    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo('Shutting down')


if __name__ == '__main__':

    yolo_src = None
    obstacle_meas = None

    # subscribe topics
    camera_info = rospy.get_param('camera_info_topic', '/camera/color/camera_info')
    image_color = rospy.get_param('image_color_topic', '/camera/color/image_raw')
    velodyne_points = rospy.get_param('velodyne_points_topic', '/os_cloud_node/points')
    yolo_bboxes = rospy.get_param('bounding_boxes_topic','/darknet_ros/check_for_objects')
    lidar_bboxes = rospy.get_param('lidar_bboxes_topic', '/lidar_bboxes')

    # publish topics
    obstacle_meas = rospy.get_param(
        'obstacle_meas_topic', '/obstacles_meas')

    # Start subscriber
    listener(camera_info, image_color, velodyne_points,
             yolo_bboxes, lidar_bboxes, obstacle_meas)
