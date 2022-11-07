#!/usr/bin/env python
import rospy
from std_msgs.msg import Bool
from geometry_msgs.msg import PolygonStamped, Polygon, Point32
import lidar_obstacle_detector.msg
import actionlib


class ObstacleDetectorNode():
    _result = lidar_obstacle_detector.msg.ObstacleInfoResult()
    def __init__(self, name):
        self._action_name = name
        self._action_server = actionlib.SimpleActionServer(self._action_name,\
                                                            lidar_obstacle_detector.msg.ObstacleInfoAction,\
                                                            execute_cb=self.processGoal, \
                                                            auto_start = False)
        self._action_server.start()
    def processPcl(self, point_cloud):
        pass
    def processGoal(self, goal):
        print("receive goals!")
        result = lidar_obstacle_detector.msg.Obstacle()
        for raw_data in goal.obstacle_ranges.obstacle_ranges:
            point_cloud = raw_data.points
            self.processPcl(point_cloud)
            center_x = (raw_data.xmin + raw_data.xmax)/2
            center_y = (raw_data.ymin + raw_data.ymax)/2
            center_z = (raw_data.zmin + raw_data.zmax)/2
            l = (raw_data.xmax - raw_data.xmin)/2
            w = (raw_data.ymax - raw_data.ymin)/2
            h = (raw_data.zmax + raw_data.zmin)/2
            result.Class = raw_data.Class
            [result.xCenter, result.yCenter, result.zCenter] = [center_x, center_y, center_z]
            [result.length, result.width, result.height] = [l, w, h]
            self._result.obstacles.obstacles.append(result)
        self._action_server.set_succeeded(self._result)
        self._result = lidar_obstacle_detector.msg.ObstacleInfoResult()
        print("result!", self._result)
       

def main():
    """
    main function
    """
    rospy.init_node('obstacles_detect_node')
    print("init node!")
    server = ObstacleDetectorNode('/obstacles_range')
    rospy.spin()


if __name__ == '__main__':
    main()
