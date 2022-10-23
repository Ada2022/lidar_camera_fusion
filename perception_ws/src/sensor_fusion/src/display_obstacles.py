#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''
Author  : Harvey, Min Seong Kim
Email   : mskim1143@berkeley.edu
Version : -
Date    : Mar 30, 2022

Notes:
Make sure this file has executable permissions:
$ chmod +x display_obstacles.py

References:
http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscribe
'''

# Python 2/3 compatibility
from __future__ import print_function

# External modules
import matplotlib.pyplot as plt
import numpy as np

# ROS modules
PKG = 'lidar_camera_calibration'
# import roslib; roslib.load_manifest(PKG)
import rospy
from lidar_camera_calibration.msg import Obstacle, Obstacles


def callback(obstacle_info) :
    plt.clf()
    # Make a figure
    [xllim, xulim] = [-1.0, 20.0]
    [yllim, yulim] = [-10.5, 10.5]
    plt.xlim([xllim, xulim])
    plt.ylim([yllim, yulim])
    plt.xlabel('x')
    plt.ylabel('y')
    # Camera's view angle
    uslope = 0.532
    lslope = -0.490
    angle_point = np.array([[0,0], [xulim, xulim*uslope], [xulim, xulim*lslope]])
    view_angle = plt.Polygon(angle_point, color='b', alpha = 0.1, label="View angle")
    plt.gca().add_patch(view_angle)
    plt.legend()

    # Draw the ego vehicle
    plt.plot([-0.5,0.5,0.5,-0.5,-0.5], [-0.5, -0.5, 0.5, 0.5,-0.5])
    plt.text(-0.5,0.5, 'vehicle', ha='left', va='bottom')

    # Draw obstacles in obstacle_info topic
    for i in range(len(obstacle_info.obstacles)) :
        # Draw rectangular shape of the obstacle
        obstacle = obstacle_info.obstacles[i]
        [xMin, yMin, zMin] = [obstacle.xCenter - obstacle.width/2.0, obstacle.yCenter - obstacle.length/2.0, obstacle.zCenter - obstacle.height/2.0,]
        [xMax, yMax, zMax] = [obstacle.xCenter + obstacle.width/2.0, obstacle.yCenter + obstacle.length/2.0, obstacle.zCenter + obstacle.height/2.0,]
        plt.plot([xMin, xMax, xMax, xMin, xMin], [yMin, yMin, yMax, yMax, yMin], linewidth=5, c='r')
        plt.text(xMin, yMax, 
                 obstacle.Class,
                 ha='left',
                 va='bottom')

        # Draw corresponding point clouds for each obstacle
        scatter_x = np.zeros(len(obstacle_info.obstacles[i].points))
        scatter_y = np.zeros(len(obstacle_info.obstacles[i].points))
        for j in range(len(obstacle_info.obstacles[i].points)) :
            scatter_x[j] = obstacle_info.obstacles[i].points[j].x
            scatter_y[j] = obstacle_info.obstacles[i].points[j].y
        plt.scatter(scatter_x, scatter_y, s = 2)
    
    plt.pause(0.00000000001)

def listener(obstacle_info) :
    # Start node
    rospy.init_node('display_obstacles', anonymous=True)
    rospy.loginfo('obstacle info topic: %s' % obstacle_info)
    rospy.Subscriber(obstacle_info, Obstacles, callback)
    plt.ion()
    plt.show()

    # Keep python from exiting until this node is stopped
    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo('Shutting down')

if __name__ == '__main__':
    print("display_obstacles node start")
    obstacle_info = "/obstacle_info"

    # Start subscriber
    listener(obstacle_info)
