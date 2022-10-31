#!/usr/bin/env python
from std_srvs.srv import Empty
import rospy
from std_msgs.msg import Bool
from geometry_msgs.msg import PolygonStamped, Polygon, Point32
from lidar_obstacle_detector.msg import Obstacle,ObstacleRange
from lidar_obstacle_detector.srv import ObstacleInfo,ObstacleInfoResponse

def processPcl(raw_data):
    pass

def callback(request):

    rospy.wait_for_service('clear')
    clear_proxy = rospy.ServiceProxy('clear',Empty)

    result = Obstacle()
    results = []
    for raw_data in request.obstacle_ranges:
        point_cloud = raw_data.points
        processPcl(point_cloud)
        center_x = (raw_data.xmin + raw_data.xmax)/2
        center_y = (raw_data.ymin + raw_data.ymax)/2
        center_z = (raw_data.zmin + raw_data.zmax)/2
        l = (raw_data.xmax - raw_data.xmin)/2
        w = (raw_data.ymax - raw_data.ymin)/2
        h = (raw_data.zmax + raw_data.zmin)/2
        [result.xCenter, result.yCenter, result.zCenter] = [center_x, center_y, center_z]
        [result.length, result.width, result.height] = [l, w, h]
        results.append(result)

    clear_proxy()

    return ObstacleInfoResponse(results)
        

def main():
    """
    main function
    """
    rospy.init_node('obstacles_detect_node')
    print("init node!")
    rospy.Service('/obstacles_range', ObstacleInfo, callback)
    rospy.spin()


if __name__ == '__main__':
    main()
