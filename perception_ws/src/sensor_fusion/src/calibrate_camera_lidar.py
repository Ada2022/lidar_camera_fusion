#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''
Author  : Heethesh Vhavle
Email   : heethesh@cmu.edu
Version : 1.2.1
Date    : Jan 20, 2019

Description:
Script to find the transformation between the Camera and the LiDAR

Example Usage:
1. To perform calibration using the GUI to pick correspondences:

    $ rosrun lidar_camera_calibration calibrate_camera_lidar.py --calibrate

    The point correspondences will be save as following:
    - PKG_PATH/calibration_data/lidar_camera_calibration/img_corners.npy
    - PKG_PATH/calibration_data/lidar_camera_calibration/pcl_corners.npy

    The calibrate extrinsic are saved as following:
    - PKG_PATH/calibration_data/lidar_camera_calibration/extrinsics.npz
    --> 'euler' : euler angles (3, )
    --> 'R'     : rotation matrix (3, 3)
    --> 'T'     : translation offsets (3, )

2. To display the LiDAR points projected on to the camera plane:

    $ roslaunch lidar_camera_calibration display_camera_lidar_calibration.launch

Notes:
Make sure this file has executable permissions:
$ chmod +x calibrate_camera_lidar.py

References:
http://wiki.ros.org/message_filters
http://wiki.ros.org/cv_bridge/Tutorials/
http://docs.ros.org/api/image_geometry/html/python/
http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscribe
'''

# Python 2/3 compatibility
from __future__ import print_function

# Built-in modules
import os
import sys
import time
import threading
import multiprocessing
try: 
    import queue
except ImportError:
    import Queue as queue

# External modules
import cv2
import numpy as np
import matplotlib
# matplotlib.use('Agg')
# matplotlib.use('TkAgg')
import matplotlib.cm
import matplotlib.pyplot as plt
# plt.switch_backend('Agg')
from mpl_toolkits.mplot3d import Axes3D

# ROS modules
PKG = 'lidar_camera_calibration'
import roslib; roslib.load_manifest(PKG)
import rosbag
import rospy
import tf2_ros
import ros_numpy
import image_geometry
import message_filters
from cv_bridge import CvBridge, CvBridgeError
from tf.transformations import euler_from_matrix
from tf2_sensor_msgs.tf2_sensor_msgs import do_transform_cloud
from sensor_msgs.msg import Image, CameraInfo, PointCloud2
from geometry_msgs.msg import Point
from lidar_camera_calibration.msg import BoundingBox, BoundingBoxes, ObjectCount, Obstacle, Obstacles

# import global variable
# from object_dictionary import OBJECT_DICT

# Global variables
CALIBRATE_MODE = False
PROJECT_MODE = False
PAUSE = False
FIRST_TIME = True
KEY_LOCK = threading.Lock()
TF_BUFFER = None
TF_LISTENER = None
CV_BRIDGE = CvBridge()
CAMERA_MODEL = image_geometry.PinholeCameraModel()
BBOX_DTYPE = [('xmin', np.int64), ('ymin', np.int64), ('xmax', np.int64), ('ymax', np.int64), ('class', np.str_, 100)]
BBOX_ARR = np.zeros(100, dtype=BBOX_DTYPE)
OBJECT_COUNT = 0
CLUSTER_THRESHOLD = 0.3

# Global paths
PKG_PATH = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
CALIB_PATH = 'calibration_data/lidar_camera_calibration'


def sensorFusion(velodyne, img_msg, obstacle_pub, image_pub):
    # Read image using CV bridge
    try:
        img = CV_BRIDGE.imgmsg_to_cv2(img_msg, 'bgr8')
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

    # max_intensity = np.max(points3D[:, -1])
    # points3D = points3D[inrange[0]]

    # Color map for the points
    # cmap = matplotlib.cm.get_cmap('jet')
    # colors = cmap(points3D[:, -1] / max_intensity) * 255

    # Project to 2D and filter points within image boundaries
    points2D = [ CAMERA_MODEL.project3dToPixel(point) for point in points3D[:, :3] ]
    points2D = np.asarray(points2D)

    if np.size(points2D) > 0 :
        inrange = np.where((points2D[:, 0] >= 0) &
                           (points2D[:, 1] >= 0) &
                           (points2D[:, 0] < img.shape[1]) &
                           (points2D[:, 1] < img.shape[0]))
        points2D = points2D[inrange[0]].round().astype('int')

    obstaclesMsg = Obstacles()
    obstaclesMsg.header.stamp = rospy.Time.now()
    obstaclesMsg.header.frame_id = "Obstacle position"

    global OBJECT_DICT

    for i in range(OBJECT_COUNT) :
        cv2.rectangle(img, (BBOX_ARR[i][0], BBOX_ARR[i][1]), (BBOX_ARR[i][2], BBOX_ARR[i][3]), (36,255,12), 2)
        cv2.putText(img, BBOX_ARR[i][4], (BBOX_ARR[i][0], BBOX_ARR[i][1]+15), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)

        inrange_box = np.where((points2D[:, 0] <= BBOX_ARR[i][2]) &
                               (points2D[:, 0] >= BBOX_ARR[i][0]) &
                               (points2D[:, 1] <= BBOX_ARR[i][3]) &
                               (points2D[:, 1] >= BBOX_ARR[i][1]))
        points3d_bbox = points3D[inrange_box[0]]
        points2d_bbox = points2D[inrange_box[0]]

        # if len(points_bbox) >= 10 :
        #     points_filtered = np.zeros(10)
        #     inrange_filter = np.zeros(10)

        #     # filter pcl based on its x, y coordinate on the image frame and euclidean distance
        #     point_dist = np.linalg.norm(points_bbox, axis = 1)
        #     dist_llim = np.percentile(point_dist, 25)
        #     dist_ulim = np.percentile(point_dist, 75)

        #     center_llim = np.percentile(points2d_bbox[:,:2], 25, axis = 0)
        #     center_ulim = np.percentile(points2d_bbox[:,:2], 75, axis = 0)
        #     inrange_filter= np.where((points2d_bbox[:,0] >= center_llim[0]) &
        #                              (points2d_bbox[:,0] <= center_ulim[0]) &
        #                              (points2d_bbox[:,1] >= center_llim[1]) &
        #                              (points2d_bbox[:,1] <= center_ulim[1]) &
        #                              (point_dist >= dist_llim) &
        #                              (point_dist <= dist_ulim))

        #     inrange_filter = inrange_filter[0]
        #     points_filtered = points_bbox[inrange_filter]
        #     print(points_filtered.shape)
        #     # when number of filtered points are zero, skip to the next bounding box
        #     if len(points_filtered) == 0 : continue
        #     # else, implement clustering            
        #     else : points_filtered = point_cluster(points_filtered)

        #     avg_pt = np.average(points_filtered, axis = 0)
        #     min_pt = np.amin(points_filtered, axis = 0)
        #     max_pt = np.amax(points_filtered, axis = 0)
        #     # print('after')
        #     # print(points_filtered.shape[0])

        #     # Make obstacle message
        #     objectMsg = Obstacle();
        #     objectMsg.Class = BBOX_ARR[i][4]
        #     [objectMsg.width, objectMsg.length, objectMsg.height] = (max_pt - min_pt)*2.0
        #     [objectMsg.xCenter, objectMsg.yCenter, objectMsg.zCenter] = (max_pt + min_pt - avg_pt)


        #     print(points_bbox.shape[0])
        #     print(len(points_bbox))

        #     # Append all the pcl in a bounding box
        #     for j in range(len(points_bbox)) :
        #         objectMsg.points.append(Point(points_bbox[j,0], points_bbox[j,1], points_bbox[j,2]))
        #     # Or, only append the filtered pcl in a bounding box
        #     # for j in range(len(points_filtered)) :
        #     #     objectMsg.points.append(Point(points_filtered[j,0], points_filtered[j,1], points_filtered[j,2]))
        #     obstaclesMsg.obstacles.append(objectMsg)

        #     points2d_bbox_after = points2d_bbox[inrange_filter].round().astype('int')
        #     for j in range(len(points2d_bbox)):
        #         cv2.circle(img, tuple(points2d_bbox[j]), 2, (0,0,255), -1)

    ''' Draw the all of the projected 2D points
    for i in range(len(points2D)):
        print("draw point")
        cv2.circle(img, tuple(points2D[i]), 1, tuple(colors[i]), -1)
    '''

    # Publish the projected points image and obstacle info topic
    try:
        image_pub.publish(CV_BRIDGE.cv2_to_imgmsg(img, "bgr8"))
        obstacle_pub.publish(obstaclesMsg)

    except CvBridgeError as e:
        rospy.logerr(e)


'''
Point cluster function to filter outliers
From the points (shape = (3,n)), return a cluster that contains the closest (to the origin) point
'''
# def point_cluster(points) : # points.shape = (3,n)
#     num_points = points.shape[0]
#     print(num_points)
#     # make visited array to check whether the point is visited or not
#     visited = np.zeros(num_points, dtype=bool)
#     # make index array
#     idx_array = []
#     # calculate euclidean distance of the points
#     points_dist = np.linalg.norm(points, axis = 1)
#     # queue for BFS
#     point_queue = queue.Queue()
#     # start from the closest point
#     start_idx = np.argmin(points_dist)
#     visited[start_idx] = True
#     point_queue.put(start_idx)

#     # implement BFS. If the point is not visited and close enough to the point in the queue, add it to the queue
#     # whenever pop from the queue, add it to the index array
#     global CLUSTER_THRESHOLD
#     while not point_queue.empty() :
#         queue_size = point_queue.qsize()
#         for i in range(queue_size) :
#             point_idx = point_queue.get()
#             idx_array.append(point_idx)
#             for j in range(num_points) :
#                 if visited[j] : continue
#                 if np.linalg.norm(points[point_idx,:] - points[j,:]) < CLUSTER_THRESHOLD :
#                     point_queue.put(j)
#                     visited[j] = True

#     # Now, idx_array is the indices of points that are in a cluster
#     return points[idx_array,:]

'''
Callback function to publish project image and run calibration

Inputs:
    image - [sensor_msgs/Image] - ROS sensor image message
    camera_info - [sensor_msgs/CameraInfo] - ROS sensor camera info message
    velodyne - [sensor_msgs/PointCloud2] - ROS velodyne PCL2 message
    image_pub - [sensor_msgs/Image] - ROS image publisher

Outputs: None
'''

def sensorFusionCallback(image, camera_info, velodyne, boundingBoxes, objectCount, obstacle_pub, image_pub):
    global CAMERA_MODEL, FIRST_TIME, PAUSE, TF_BUFFER, TF_LISTENER
    if FIRST_TIME:
        FIRST_TIME = False

        # Setup camera model
        rospy.loginfo('Setting up camera model')
        CAMERA_MODEL.fromCameraInfo(camera_info)

        # TF listener
        rospy.loginfo('Setting up static transform listener')
        TF_BUFFER = tf2_ros.Buffer()
        TF_LISTENER = tf2_ros.TransformListener(TF_BUFFER)

    boundingBoxCallback(boundingBoxes, objectCount)
    sensorFusion(velodyne, image, obstacle_pub, image_pub)

'''
The main ROS node which handles the topics

Inputs:
    camera_info - [str] - ROS sensor camera info topic
    image_color - [str] - ROS sensor image topic
    velodyne - [str] - ROS velodyne PCL2 topic
    camera_lidar - [str] - ROS projected points image topic

Outputs: None
'''

def boundingBoxCallback(boundingBoxes, objectCount) :
    global OBJECT_COUNT
    global BBOX_ARR

    OBJECT_COUNT = np.amin([objectCount.count, len(boundingBoxes.bounding_boxes)])

    for i in range(OBJECT_COUNT) :
        BBOX_ARR[i] = (boundingBoxes.bounding_boxes[i].xmin, boundingBoxes.bounding_boxes[i].ymin,
                       boundingBoxes.bounding_boxes[i].xmax, boundingBoxes.bounding_boxes[i].ymax,
                       boundingBoxes.bounding_boxes[i].Class)


def listener(camera_info, image_color, velodyne_points, bounding_boxes = None, found_object = None, obstacle_info = None, camera_lidar = None):  # bounding_boxes, object_count,
    global CALIBRATE_MODE, PROJECT_MODE

    # Start node
    rospy.init_node('calibrate_camera_lidar', anonymous=True)
    rospy.loginfo('Current PID: [%d]' % os.getpid())
    rospy.loginfo('Calibration mode: %s' % CALIBRATE_MODE)
    rospy.loginfo('CameraInfo topic: %s' % camera_info)
    rospy.loginfo('Image topic: %s' % image_color)
    rospy.loginfo('PointCloud2 topic: %s' % velodyne_points)
    # rospy.loginfo('Bounding boxes: %s' % bounding_boxes)
    # rospy.loginfo('Objects count: %s' % object_count)
    rospy.loginfo('Output topic1: %s' % camera_lidar)
    rospy.loginfo('Output topic2: %s' % obstacle_info)


    # Subscribe to topics
    info_sub = message_filters.Subscriber(camera_info, CameraInfo)
    image_sub = message_filters.Subscriber(image_color, Image)
    velodyne_sub = message_filters.Subscriber(velodyne_points, PointCloud2)
    bbox_sub = None
    if bounding_boxes: bbox_sub = message_filters.Subscriber(bounding_boxes, BoundingBoxes)
    objectCount_sub = None
    if found_object  : objectCount_sub = message_filters.Subscriber(found_object, ObjectCount)

    # Publish output topic
    image_pub = None
    if camera_lidar:  image_pub = rospy.Publisher(camera_lidar, Image, queue_size=1)
    # obstacle_pub = None
    # if obstacle_info: obstacle_pub = rospy.Publisher(obstacle_info, Obstacles, queue_size=1)


        # Synchronize the topics by time
    ats = message_filters.ApproximateTimeSynchronizer(
        [image_sub, info_sub, velodyne_sub, bbox_sub, objectCount_sub], queue_size=5, slop=0.1)
    ats.registerCallback(sensorFusionCallback, image_pub)

    # Keep python from exiting until this node is stopped
    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo('Shutting down')

'''
For kitti dataset :
        camera_info = '/kitti/camera_gray_left/camera_info'
        image_color = '/kitti/camera_gray_left/image_raw'
        velodyne_points = '/kitti/velo/pointcloud'
		(For color image, camera_gray_left > camera_color_left)
For our data :
	camera_info = '/camera/color/camera_info'
	image_color = '/camera/color/image_raw'
	velodyne_points = '/os_cloud_node/points'
'''


if __name__ == '__main__':
    print("main start")
    bounding_boxes = None
    found_object = None
    obstacle_info = None
    camera_lidar = None

    print("not calibration")
    camera_info = rospy.get_param('camera_info_topic')
    image_color = rospy.get_param('image_color_topic')
    velodyne_points = rospy.get_param('velodyne_points_topic')
    camera_lidar = rospy.get_param('camera_lidar_topic')

    bounding_boxes = rospy.get_param('bounding_boxes_topic')
    found_object = rospy.get_param('found_object_topic')
    # obstacle_info = rospy.get_param('obstacle_info_topic')

    # Start subscriber
    listener(camera_info, image_color, velodyne_points, bounding_boxes, found_object, obstacle_info, camera_lidar)
