#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''
Author  : Hao Ouyang
Email   : hao_ouyang@berkeley.edu
Version : 1.0.0
Date    : Oct 02, 2022

Description:

Example Usage:
$ rosrun lidar_camera_calibration display_rosbags.py (path to rosbag)/rosbag.bag

Notes:
Make sure this file has executable permissions:
$ chmod +x update_timestamp.py
'''

# Python 2/3 compatibility
from __future__ import print_function

# Built-in modules
import os
import sys

# ROS modules
PKG = 'lidar_camera_calibration'
import roslib; roslib.load_manifest(PKG)
import rosbag
import rospy


if __name__ == '__main__':

    # Get parameters as arguments
    BAG_FILE = sys.argv[1]
    IMAGE_RAW   = "/camera/color/image_raw"
    CAMERA_INFO = "/camera/color/camera_info"
    POINT_CLOUD = "/os_cloud_node/points"
    IMU         = "/os_cloud_node/imu"
    i, j, k, l = 0, 0, 0, 0

    # Load BAG_FILE
    rospy.loginfo("Load Bag file : $s", BAG_FILE)
    bag = rosbag.Bag(BAG_FILE, 'r')
    #topics = bag.get_type_and_topic_info().topics
    #topic_info = []

    #for key, topic_tuple in topics.items():
        #topic_info.append([key, topic_tuple.msg_type, topic_tuple.msg_count])
        #print(topic_info, end = '\n')

    for _, msg, t in bag.read_messages(POINT_CLOUD) :
	print("First timestamp of LiDAR from t, rospy.time =", t)
	print("First timestamp of LiDAR from msg, genpy.time.secs = ", msg.header.stamp.secs)
	print("First timestamp of LiDAR from msg, genpy.time.nsecs = ", msg.header.stamp.nsecs)
	break

    for _, msg, t in bag.read_messages(IMAGE_RAW) :
	print("First timestamp of camera from t, rospy.time =", t)
	print("First timestamp of camera from msg, genpy.time.secs = ", msg.header.stamp.secs)
	print("First timestamp of camera from msg, genpy.time.nsecs = ", msg.header.stamp.nsecs)
	break

    for _, msg, t in bag.read_messages(IMU) :
	print("First timestamp of imu from t, rospy.time =", t)
	print("First timestamp of imu from msg, genpy.time.secs = ", msg.header.stamp.secs)
	print("First timestamp of imu from msg, genpy.time.nsecs = ", msg.header.stamp.nsecs)
	break

    for _, msg, t in bag.read_messages(CAMERA_INFO) :
	print("First timestamp of info from t, rospy.time =", t)
	print("First timestamp of info from msg, genpy.time.secs = ", msg.header.stamp.secs)
	print("First timestamp of info from msg, genpy.time.nsecs = ", msg.header.stamp.nsecs)
	break

#    print("image counts=",i, "camera counts=",j, "lidar counts=",k, "imu counts=",l)
#    print("image counts=",i, "camera counts=",j, "lidar counts=",k)

    



