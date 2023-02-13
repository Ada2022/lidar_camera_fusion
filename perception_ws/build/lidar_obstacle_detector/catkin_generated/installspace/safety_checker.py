#!/usr/bin/env python2

import rospy
from jsk_recognition_msgs.msg import BoundingBoxArray
from std_msgs.msg import Bool
from geometry_msgs.msg import PolygonStamped, Polygon, Point32

class RectangleSafetyChecker(object):
    """
    Check whether there are obstacles in a rectangle region in front of the vehicle
    """
    def __init__(self):
        """
        Init node
        """
        rospy.init_node('safety_checker', anonymous=False)

        rate = rospy.get_param('cmd_rate', 10)
        self.rate = rospy.Rate(rate) # 36hz

        # X-Y are based on LiDAR coordinate system. Y is pointing towards the front of the vehicle, while X is pointing towards the cable
        self.x_max = rospy.get_param('~x_max', 2)
        self.x_min = rospy.get_param('~x_min', -2)
        self.y_max = rospy.get_param('~y_max', 4)
        self.y_min = rospy.get_param('~y_min', 0)
        self.size_thres = rospy.get_param('~size_thres', 0.5)
        self.base_frame = rospy.get_param('~base_frame', 'os_lidar')

        self.region = [
            Point32(self.x_min, self.y_min, 0),
            Point32(self.x_min, self.y_max, 0),
            Point32(self.x_max, self.y_max, 0),
            Point32(self.x_max, self.y_min, 0)
        ]

        self.boundingbox_array = []

        self.bbox_sub = rospy.Subscriber("/obstacle_detector/jsk_bboxes", BoundingBoxArray, self.bbox_cb, queue_size=10)

        self.region_pub = rospy.Publisher("/obstacle_detector/detect_region", PolygonStamped, queue_size=10)
        self.safety_pub = rospy.Publisher("/obstacle_detector/safety_flag", Bool, queue_size=10)


    def bbox_cb(self, data):
        """
        callback function for bounding box array
        """
        self.boundingbox_array = data.boxes
        # print("================")
        # print(data.boxes)

    def spin(self):
        """
        main loop of the node
        """
        while not rospy.is_shutdown():
            
            is_safe = True
            for bbox in self.boundingbox_array:
                if self.x_min <= bbox.pose.position.x <= self.x_max and self.y_min <= bbox.pose.position.y <= self.y_max:
                    if bbox.dimensions.x >= self.size_thres or bbox.dimensions.y >= self.size_thres or bbox.dimensions.z >= self.size_thres:
                        is_safe = False
                        break

            rospy.loginfo("Safety = %s" % is_safe)

            polygon_msg = PolygonStamped()
            polygon_msg.header.stamp = rospy.Time.now()
            polygon_msg.header.frame_id = self.base_frame
            polygon_msg.polygon = Polygon(self.region)

            safety_msg = Bool()
            safety_msg.data = is_safe
            self.safety_pub.publish(safety_msg)
            self.region_pub.publish(polygon_msg)

            self.rate.sleep()

def main():
    """
    main function
    """
    node = RectangleSafetyChecker()
    try:
        node.spin()
    except rospy.ROSInterruptException:
        pass

if __name__ == '__main__':
    main()
