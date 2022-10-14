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

    for topic, msg, t in bag.read_messages() :
#        if topic in [IMAGE_RAW, CAMERA_INFO, POINT_CLOUD, IMU]:
        if topic in [IMAGE_RAW, CAMERA_INFO, POINT_CLOUD]:
            if topic == IMAGE_RAW:
                i = i + 1
            if topic == CAMERA_INFO:
                j = j + 1
            if topic == POINT_CLOUD:
                k = k + 1
#            if topic == IMU:
#                l = l + 1
            time = msg.header.stamp
            msg = [topic, time]
            print(msg)

#    print("image counts=",i, "camera counts=",j, "lidar counts=",k, "imu counts=",l)
    print("image counts=",i, "camera counts=",j, "lidar counts=",k)

    



