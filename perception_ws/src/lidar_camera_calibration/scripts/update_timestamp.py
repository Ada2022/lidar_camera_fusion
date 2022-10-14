#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''
Author  : Harvey, Min Seong Kim
Email   : mskim1143@berkeley.edu
Version : 1.0.1
Date    : Dec 04, 2021

Description:
Script to update the timestamp data of UC Berkeley MPC Lab's field data of 'Autonomous rover project.'
I wrote the script because there's a lot disparity between the timestamps of image and pointcloud topic.
This script will fix it. Before you use this script, you should check the difference between the timestamps of topics. This script adds 1636136307.389147837 [s] to the timestamp of PCL and IMU topic from an Ouster lidar node.

Example Usage:
$ rosrun lidar_camera_calibration update_timestamp (path to rosbag)/rosbag.bag

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

    # Load BAG_FILE
    rospy.loginfo("Load Bag file : $s", BAG_FILE)
    bag = rosbag.Bag(BAG_FILE, 'r')

    # Output folder
    output_folder = os.path.dirname(BAG_FILE)
    output_filename = os.path.splitext(os.path.basename(BAG_FILE))[0] + "_modified.bag"
    OUTPUT_FILE = os.path.join(output_folder , output_filename)
    # os.mknod(OUTPUT_FILE)
    output = rosbag.Bag(OUTPUT_FILE, 'w')

    for topic, msg, t in bag.read_messages() :
        if topic == POINT_CLOUD or topic == IMU:
            if msg.header.stamp.nsecs + 389147837 >= 1e+9 :
                msg.header.stamp.secs  = msg.header.stamp.secs + 1636136307 + 1
                msg.header.stamp.nsecs = msg.header.stamp.nsecs + 389147837 - 1e+9
            else :
                msg.header.stamp.secs  = msg.header.stamp.secs + 1636136307
                msg.header.stamp.nsecs = msg.header.stamp.nsecs + 389147837

        output.write(topic, msg, msg.header.stamp if msg._has_header else t)

    rospy.loginfo('Modification is done')

    # Close bag file
    bag.close()
    output.close()
