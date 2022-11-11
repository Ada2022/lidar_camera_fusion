# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;std_msgs;pcl_ros;tf2_ros;tf2_geometry_msgs;dynamic_reconfigure;autoware_msgs;jsk_recognition_msgs;actionlib_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-llidar_obstacle_detector".split(';') if "-llidar_obstacle_detector" != "" else []
PROJECT_NAME = "lidar_obstacle_detector"
PROJECT_SPACE_DIR = "/home/ada/Desktop/Capstone/perception_ws/install"
PROJECT_VERSION = "0.0.0"
