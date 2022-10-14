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


'''
Keyboard handler thread
Inputs: None
Outputs: None
'''
def handle_keyboard():
    global KEY_LOCK, PAUSE
    try:
        key = raw_input('Press [ENTER] to pause and pick points\n')
    except EOFError :
	print('EOF error occurred. Pass.')
	pass
    with KEY_LOCK: PAUSE = True

'''
Start the keyboard handler thread
Inputs: None
Outputs: None
'''
def start_keyboard_handler():
    keyboard_t = threading.Thread(target=handle_keyboard)
    keyboard_t.daemon = True
    keyboard_t.start()


'''
Save the point correspondences and image data
Points data will be appended if file already exists

Inputs:
    data - [numpy array] - points or opencv image
    filename - [str] - filename to save
    folder - [str] - folder to save at
    is_image - [bool] - to specify whether points or image data

Outputs: None
'''
def save_data(data, filename, folder, is_image=False):
    # Empty data
    if not len(data): return

    # Handle filename
    filename = os.path.join(PKG_PATH, os.path.join(folder, filename))

    # Create folder
    try:
        os.makedirs(os.path.join(PKG_PATH, folder))
    except OSError:
        if not os.path.isdir(os.path.join(PKG_PATH, folder)): raise

    # Save image
    if is_image:
        cv2.imwrite(filename, data)
        return

    # Save points data
    if os.path.isfile(filename):
        rospy.logwarn('Updating file: %s' % filename)
        data = np.vstack((np.load(filename), data))
    np.save(filename, data)


'''
Runs the image point selection GUI process

Inputs:
    img_msg - [sensor_msgs/Image] - ROS sensor image message
    now - [int] - ROS bag time in seconds
    rectify - [bool] - to specify whether to rectify image or not

Outputs:
    Picked points saved in PKG_PATH/CALIB_PATH/img_corners.npy
'''
def extract_points_2D(img_msg, now, rectify=False):
    # Log PID
    rospy.loginfo('2D Picker PID: [%d]' % os.getpid())

    # Read image using CV bridge
    try:
        img = CV_BRIDGE.imgmsg_to_cv2(img_msg, 'bgr8')
    except CvBridgeError as e:
        rospy.logerr(e)
        return

    # Rectify image
    if rectify: CAMERA_MODEL.rectifyImage(img, img)
    disp = cv2.cvtColor(img.copy(), cv2.COLOR_BGR2RGB)

    # Setup matplotlib GUI
    fig = plt.figure()
    ax = fig.add_subplot(111)
    ax.set_title('Select 2D Image Points - %d' % now.secs)
    ax.set_axis_off()
    ax.imshow(disp)

    # Pick points
    picked, corners = [], []
    def onclick(event):
        x = event.xdata
        y = event.ydata
        if (x is None) or (y is None): return

        # Display the picked point
        picked.append((x, y))
        corners.append((x, y))
        rospy.loginfo('IMG: %s', str(picked[-1]))

        if len(picked) > 1:
            # Draw the line
            temp = np.array(picked)
            ax.plot(temp[:, 0], temp[:, 1])
            ax.figure.canvas.draw_idle()

            # Reset list for future pick events
            del picked[0]

    # Display GUI
    fig.canvas.mpl_connect('button_press_event', onclick)
    plt.show()

    # Save corner points and image
    rect = '_rect' if rectify else ''
    if len(corners) > 1: del corners[-1] # Remove last duplicate
    save_data(corners, 'img_corners%s.npy' % (rect), CALIB_PATH)
    save_data(img, 'image_color%s-%d.jpg' % (rect, now.secs),
        os.path.join(CALIB_PATH, 'images'), True)


'''
Runs the LiDAR point selection GUI process
Inputs:
    velodyne - [sensor_msgs/PointCloud2] - ROS velodyne PCL2 message
    now - [int] - ROS bag time in seconds

Outputs:
    Picked points saved in PKG_PATH/CALIB_PATH/pcl_corners.npy
'''
def extract_points_3D(velodyne, now):
    # Log PID
    rospy.loginfo('3D Picker PID: [%d]' % os.getpid())

    # Extract points data
    points = ros_numpy.point_cloud2.pointcloud2_to_array(velodyne)
    points = np.asarray(points.tolist())

    # Group all beams together and pick the first 4 columns for X, Y, Z, intensity.
    points = points.reshape(-1, 9)[:, :4]

    # Select point cloud field-of-view to display
    inrange = np.where((points[:, 0] > 1.5) &
                       (points[:, 0] < 5.5) &
                       (points[:, 1] > -1.7) &
                       (points[:, 1] < 2.7) &
                       (points[:, 2] > -0.7) &
                       (points[:, 2] <  0.6))

    points = points[inrange[0]]
    print(points.shape)
    if points.shape[0] > 5:
        rospy.loginfo('PCL points available: %d', points.shape[0])
    else:
        rospy.logwarn('Very few PCL points available in range')
        return

    # Color map for the points
    cmap = matplotlib.cm.get_cmap('hsv')
    colors = cmap(points[:, -1] / np.max(points[:, -1]))

    # Setup matplotlib GUI
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    ax.set_title('Select 3D LiDAR Points - %d' % now.secs, color='white')
    ax.set_axis_off()
    ax.set_facecolor((0, 0, 0))
    ax.scatter(points[:, 0], points[:, 1], points[:, 2], c=colors, s=2, picker=5)

    # Equalize display aspect ratio for all axes
    max_range = (np.array([points[:, 0].max() - points[:, 0].min(),
        points[:, 1].max() - points[:, 1].min(),
        points[:, 2].max() - points[:, 2].min()]).max() / 2.0)
    mid_x = (points[:, 0].max() + points[:, 0].min()) * 0.5
    mid_y = (points[:, 1].max() + points[:, 1].min()) * 0.5
    mid_z = (points[:, 2].max() + points[:, 2].min()) * 0.5
    ax.set_xlim(mid_x - max_range, mid_x + max_range)
    ax.set_ylim(mid_y - max_range, mid_y + max_range)
    ax.set_zlim(mid_z - max_range, mid_z + max_range)

    # Pick points
    picked, corners = [], []
    def onpick(event):
        ind = event.ind[0]
        x, y, z = event.artist._offsets3d

        # Ignore if same point selected again
        if picked and (x[ind] == picked[-1][0] and y[ind] == picked[-1][1] and z[ind] == picked[-1][2]):
            return

        # Display picked point
        picked.append((x[ind], y[ind], z[ind]))
        corners.append((x[ind], y[ind], z[ind]))
        rospy.loginfo('PCL: %s', str(picked[-1]))

        if len(picked) > 1:
            # Draw the line
            temp = np.array(picked)
            ax.plot(temp[:, 0], temp[:, 1], temp[:,2])
            ax.figure.canvas.draw_idle()

            # Reset list for future pick events
            del picked[0]

    # Display GUI
    fig.canvas.mpl_connect('pick_event', onpick)
    plt.show()

    # Save corner points
    if len(corners) > 1: del corners[-1] # Remove last duplicate
    save_data(corners, 'pcl_corners.npy', CALIB_PATH)


'''
Calibrate the LiDAR and image points using OpenCV PnP RANSAC
Requires minimum 5 point correspondences

Inputs:
    points2D - [numpy array] - (N, 2) array of image points
    points3D - [numpy array] - (N, 3) array of 3D points

Outputs:
    Extrinsics saved in PKG_PATH/CALIB_PATH/extrinsics.npz
'''
def calibrate(points2D=None, points3D=None):
    # Load corresponding points
    folder = os.path.join(PKG_PATH, CALIB_PATH)
    if points2D is None: points2D = np.load(os.path.join(folder, 'img_corners.npy'))
    if points3D is None: points3D = np.load(os.path.join(folder, 'pcl_corners.npy'))

    # Check points shape
    assert(points2D.shape[0] == points3D.shape[0])
    if not (points2D.shape[0] >= 5):
        rospy.logwarn('PnP RANSAC Requires minimum 5 points')
        return

    # Obtain camera matrix and distortion coefficients
    camera_matrix = CAMERA_MODEL.intrinsicMatrix()
    dist_coeffs = CAMERA_MODEL.distortionCoeffs()

    print(camera_matrix)
    print(dist_coeffs)

    # Estimate extrinsics
    success, rotation_vector, translation_vector, inliers = cv2.solvePnPRansac(points3D,
        points2D, camera_matrix, dist_coeffs, flags=cv2.SOLVEPNP_ITERATIVE)

    # Compute re-projection error.
    points2D_reproj = cv2.projectPoints(points3D, rotation_vector,
        translation_vector, camera_matrix, dist_coeffs)[0].squeeze(1)
    assert(points2D_reproj.shape == points2D.shape)
    # print(points2D)
    error = (points2D_reproj - points2D)[inliers]  # Compute error only over inliers.
    # print(error)
    rmse = np.sqrt(np.mean(error[:, 0, 0] ** 2 + error[:, 0, 1] ** 2))
    rospy.loginfo('Re-projection error before LM refinement (RMSE) in px: ' + str(rmse))

    # Refine estimate using LM
    if not success:
        rospy.logwarn('Initial estimation unsuccessful, skipping refinement')
    elif not hasattr(cv2, 'solvePnPRefineLM'):
        rospy.logwarn('solvePnPRefineLM requires OpenCV >= 4.1.1, skipping refinement')
    else:
        assert len(inliers) >= 3, 'LM refinement requires at least 3 inlier points'
        rotation_vector, translation_vector = cv2.solvePnPRefineLM(points3D[inliers],
            points2D[inliers], camera_matrix, dist_coeffs, rotation_vector, translation_vector)

        # Compute re-projection error.
        points2D_reproj = cv2.projectPoints(points3D, rotation_vector,
            translation_vector, camera_matrix, dist_coeffs)[0].squeeze(1)
        assert(points2D_reproj.shape == points2D.shape)
        error = (points2D_reproj - points2D)[inliers]  # Compute error only over inliers.
        rmse = np.sqrt(np.mean(error[:, 0] ** 2 + error[:, 1] ** 2))
        rospy.loginfo('Re-projection error after LM refinement (RMSE) in px: ' + str(rmse))

    # Convert rotation vector
    rotation_matrix = cv2.Rodrigues(rotation_vector)[0]
    euler = euler_from_matrix(rotation_matrix)

    # Save extrinsics
    np.savez(os.path.join(folder, 'extrinsics.npz'),
        euler=euler, R=rotation_matrix, T=translation_vector.T)

    # Display results
    print('Euler angles (RPY):', euler)
    print('Rotation Matrix:', rotation_matrix)
    print('Translation Offsets:', translation_vector.T)


'''
Projects the point cloud on to the image plane using the extrinsics

Inputs:
    img_msg - [sensor_msgs/Image] - ROS sensor image message
    velodyne - [sensor_msgs/PointCloud2] - ROS velodyne PCL2 message
    image_pub - [sensor_msgs/Image] - ROS image publisher
'''
def project_point_cloud(velodyne, img_msg, image_pub=None):
    # Read image using CV bridge
    try:
        img = CV_BRIDGE.imgmsg_to_cv2(img_msg, 'bgr8')
    except CvBridgeError as e:
        rospy.logerr(e)
        return

    points = ros_numpy.point_cloud2.pointcloud2_to_array(velodyne)
    points = np.asarray(points.tolist())

    # Group all beams together and pick the first 4 columns for X, Y, Z, intensity.
    points = points.reshape(-1, 9)[:, :4]

    # Select points of interest
    inrange = np.where((points[:, 0] < 10) &              # backward -> forward as value increases
                       (points[:, 0] > 1) &
                       (np.abs(points[:, 1]) < 10) &      # left-> right as value increases
                       (np.abs(points[:, 2]) < 2))     # buttom -> top as value increases

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

    # Filter points in front of camera

    max_intensity = np.max(points3D[:, -1])
    points3D = points3D[inrange[0]]

    # Color map for the points
    cmap = matplotlib.cm.get_cmap('jet')
    colors = cmap(points3D[:, -1] / max_intensity) * 255

    # Project to 2D and filter points within image boundaries
    points2D = [ CAMERA_MODEL.project3dToPixel(point) for point in points3D[:, :3] ]
    points2D = np.asarray(points2D)
    inrange = np.where((points2D[:, 0] >= 0) &
                       (points2D[:, 1] >= 0) &
                       (points2D[:, 0] < img.shape[1]) &
                       (points2D[:, 1] < img.shape[0]))
    points2D = points2D[inrange[0]].round().astype('int')

    # Draw the projected 2D points
    for i in range(len(points2D)):
        cv2.circle(img, tuple(points2D[i]), 2, tuple(colors[i]), -1)

    try:
        image_pub.publish(CV_BRIDGE.cv2_to_imgmsg(img, "bgr8"))
    except CvBridgeError as e:
        rospy.logerr(e)

def sensorFusion(velodyne, img_msg, obstacle_pub, image_pub):
    # Read image using CV bridge
    try:
        img = CV_BRIDGE.imgmsg_to_cv2(img_msg, 'bgr8')
    except CvBridgeError as e:
        rospy.logerr(e)
        return

    # Extract points data with respect to lidar coordinate
    points = ros_numpy.point_cloud2.pointcloud2_to_array(velodyne)
    points = np.asarray(points.tolist())

    # Group all beams together and pick the first 4 columns for X, Y, Z, intensity.
    points = points.reshape(-1, 9)[:, :4]

    # Select field-of-view
    inrange = np.where((points[:, 0] > 1.0) &   # backward -> forward as value increases    # [1.5, 5.5]
                       (points[:, 0] < 20) &
                       (points[:, 1] > -10) &  # left -> right as value increases          # [-1.7, 2.7]
                       (points[:, 1] < 10) &
                       (points[:, 2] > -0.7) &  # buttom -> top as value increases          # [-0.7, 2]
                       (points[:, 2] <  2))
    points = points[inrange[0],:3]

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

    max_intensity = np.max(points3D[:, -1])
    points3D = points3D[inrange[0]]

    # Color map for the points
    cmap = matplotlib.cm.get_cmap('jet')
    colors = cmap(points3D[:, -1] / max_intensity) * 255

    # Project to 2D and filter points within image boundaries
    points2D = [ CAMERA_MODEL.project3dToPixel(point) for point in points3D[:, :3] ]
    points2D = np.asarray(points2D)

    if np.size(points2D) > 0 :
        inrange = np.where((points2D[:, 0] >= 0) &
                           (points2D[:, 1] >= 0) &
                           (points2D[:, 0] < img.shape[1]) &
                           (points2D[:, 1] < img.shape[0]))
        points2D = points2D[inrange[0]].round().astype('int')
        points   = points[inrange[0]]
        # print(img.shape[0]) # 480
        # print(img.shape[1]) # 640

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
        points_bbox = points[inrange_box[0]]
        points2d_bbox = points2D[inrange_box[0]]

        # for j in range(len(points2d_bbox)):
        #     cv2.circle(img, tuple(points2d_bbox[j]), 1, tuple(colors[j]), -1)

        if len(points_bbox) >= 10 :
            points_filtered = np.zeros(10)
            inrange_filter = np.zeros(10)

            # filter pcl based on its x, y coordinate on the image frame and euclidean distance
            point_dist = np.linalg.norm(points_bbox, axis = 1)
            dist_llim = np.percentile(point_dist, 25)
            dist_ulim = np.percentile(point_dist, 75)

            center_llim = np.percentile(points2d_bbox[:,:2], 25, axis = 0)
            center_ulim = np.percentile(points2d_bbox[:,:2], 75, axis = 0)
            inrange_filter= np.where((points2d_bbox[:,0] >= center_llim[0]) &
                                     (points2d_bbox[:,0] <= center_ulim[0]) &
                                     (points2d_bbox[:,1] >= center_llim[1]) &
                                     (points2d_bbox[:,1] <= center_ulim[1]) &
                                     (point_dist >= dist_llim) &
                                     (point_dist <= dist_ulim))

            inrange_filter = inrange_filter[0]
            points_filtered = points_bbox[inrange_filter]
            print(points_filtered.shape)
            # when number of filtered points are zero, skip to the next bounding box
            if len(points_filtered) == 0 : continue
            # else, implement clustering            
            else : points_filtered = point_cluster(points_filtered)

            avg_pt = np.average(points_filtered, axis = 0)
            min_pt = np.amin(points_filtered, axis = 0)
            max_pt = np.amax(points_filtered, axis = 0)
            # print('after')
            # print(points_filtered.shape[0])

            # Make obstacle message
            objectMsg = Obstacle();
            objectMsg.Class = BBOX_ARR[i][4]
            [objectMsg.width, objectMsg.length, objectMsg.height] = (max_pt - min_pt)*2.0
            [objectMsg.xCenter, objectMsg.yCenter, objectMsg.zCenter] = (max_pt + min_pt - avg_pt)


            print(points_bbox.shape[0])
            print(len(points_bbox))

            # Append all the pcl in a bounding box
            for j in range(len(points_bbox)) :
                objectMsg.points.append(Point(points_bbox[j,0], points_bbox[j,1], points_bbox[j,2]))
            # Or, only append the filtered pcl in a bounding box
            # for j in range(len(points_filtered)) :
            #     objectMsg.points.append(Point(points_filtered[j,0], points_filtered[j,1], points_filtered[j,2]))
            obstaclesMsg.obstacles.append(objectMsg)

            points2d_bbox_after = points2d_bbox[inrange_filter].round().astype('int')
            for j in range(len(points2d_bbox)):
                cv2.circle(img, tuple(points2d_bbox[j]), 2, (0,0,255), -1)

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
def point_cluster(points) : # points.shape = (3,n)
    num_points = points.shape[0]
    print(num_points)
    # make visited array to check whether the point is visited or not
    visited = np.zeros(num_points, dtype=bool)
    # make index array
    idx_array = []
    # calculate euclidean distance of the points
    points_dist = np.linalg.norm(points, axis = 1)
    # queue for BFS
    point_queue = queue.Queue()
    # start from the closest point
    start_idx = np.argmin(points_dist)
    visited[start_idx] = True
    point_queue.put(start_idx)

    # implement BFS. If the point is not visited and close enough to the point in the queue, add it to the queue
    # whenever pop from the queue, add it to the index array
    global CLUSTER_THRESHOLD
    while not point_queue.empty() :
        queue_size = point_queue.qsize()
        for i in range(queue_size) :
            point_idx = point_queue.get()
            idx_array.append(point_idx)
            for j in range(num_points) :
                if visited[j] : continue
                if np.linalg.norm(points[point_idx,:] - points[j,:]) < CLUSTER_THRESHOLD :
                    point_queue.put(j)
                    visited[j] = True

    # Now, idx_array is the indices of points that are in a cluster
    return points[idx_array,:]

'''
Callback function to publish project image and run calibration

Inputs:
    image - [sensor_msgs/Image] - ROS sensor image message
    camera_info - [sensor_msgs/CameraInfo] - ROS sensor camera info message
    velodyne - [sensor_msgs/PointCloud2] - ROS velodyne PCL2 message
    image_pub - [sensor_msgs/Image] - ROS image publisher

Outputs: None
'''
def callback(image, camera_info, velodyne, image_pub=None):
    global CAMERA_MODEL, FIRST_TIME, PAUSE, TF_BUFFER, TF_LISTENER, CALIBRATE_MODE
    # Setup the pinhole camera model
    if FIRST_TIME:
        FIRST_TIME = False

        # Setup camera model
        rospy.loginfo('Setting up camera model')
        CAMERA_MODEL.fromCameraInfo(camera_info)

        # TF listener
        rospy.loginfo('Setting up static transform listener')
        TF_BUFFER = tf2_ros.Buffer()
        TF_LISTENER = tf2_ros.TransformListener(TF_BUFFER)

    # Projection mode
    if not CALIBRATE_MODE:
        project_point_cloud(velodyne, image, image_pub)

    # Calibration mode
    elif PAUSE:
        # Create GUI processes
        now = rospy.get_rostime()
        img_p = multiprocessing.Process(target=extract_points_2D, args=[image, now])
        pcl_p = multiprocessing.Process(target=extract_points_3D, args=[velodyne, now])
        img_p.start(); pcl_p.start()
        img_p.join(); pcl_p.join()

        # Calibrate for existing corresponding points
        calibrate()

        # Resume listener
        with KEY_LOCK: PAUSE = False
        start_keyboard_handler()

def sensorFusionCallback(image, camera_info, velodyne, boundingBoxes, objectCount, obstacle_pub, image_pub):
    global CAMERA_MODEL, FIRST_TIME, PAUSE, TF_BUFFER, TF_LISTENER, CALIBRATE_MODE
    # Setup the pinhole camera model
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
    obstacle_pub = None
    if obstacle_info: obstacle_pub = rospy.Publisher(obstacle_info, Obstacles, queue_size=1)

    if CALIBRATE_MODE or PROJECT_MODE:
        # Synchronize the topics by time
        ats = message_filters.ApproximateTimeSynchronizer(
            [image_sub, info_sub, velodyne_sub], queue_size=5, slop=0.1)
        ats.registerCallback(callback, image_pub)

    else :
        # Synchronize the topics by time
        ats = message_filters.ApproximateTimeSynchronizer(
            [image_sub, info_sub, velodyne_sub, bbox_sub, objectCount_sub], queue_size=5, slop=0.1)
        ats.registerCallback(sensorFusionCallback, obstacle_pub, image_pub)

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

    # Calibration mode, rosrun
    if sys.argv[1] == '--calibrate':
        CALIBRATE_MODE = True
        camera_info = '/camera/color/camera_info'
        image_color = '/camera/color/image_raw'
        velodyne_points = '/os_cloud_node/points'

    # Projection mode, run from launch file
    else:
        print("not calibration")
        CALIBRATE_MODE = False
        PROJECT_MODE = bool(rospy.get_param('project_mode'))
        camera_info = rospy.get_param('camera_info_topic')
        image_color = rospy.get_param('image_color_topic')
        velodyne_points = rospy.get_param('velodyne_points_topic')
        camera_lidar = rospy.get_param('camera_lidar_topic')

        if not PROJECT_MODE :
            bounding_boxes = rospy.get_param('bounding_boxes_topic')
            found_object = rospy.get_param('found_object_topic')
            obstacle_info = rospy.get_param('obstacle_info_topic')

    # Start keyboard handler thread
    if CALIBRATE_MODE: start_keyboard_handler()

    # Start subscriber
    listener(camera_info, image_color, velodyne_points, bounding_boxes, found_object, obstacle_info, camera_lidar)
