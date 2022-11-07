# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lidar_obstacle_detector: 11 messages, 0 services")

set(MSG_I_FLAGS "-Ilidar_obstacle_detector:/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg;-Ilidar_obstacle_detector:/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lidar_obstacle_detector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg" ""
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:lidar_obstacle_detector/ObstacleRanges:lidar_obstacle_detector/ObstacleRange:geometry_msgs/Point:lidar_obstacle_detector/ObstacleInfoGoal"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg" "actionlib_msgs/GoalID:lidar_obstacle_detector/Obstacles:actionlib_msgs/GoalStatus:lidar_obstacle_detector/Obstacle:lidar_obstacle_detector/ObstacleInfoResult:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg" "geometry_msgs/Point:lidar_obstacle_detector/ObstacleRange"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg" ""
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:lidar_obstacle_detector/ObstacleInfoFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg" "actionlib_msgs/GoalID:lidar_obstacle_detector/ObstacleInfoResult:actionlib_msgs/GoalStatus:lidar_obstacle_detector/ObstacleInfoActionGoal:lidar_obstacle_detector/ObstacleInfoActionResult:lidar_obstacle_detector/ObstacleRanges:lidar_obstacle_detector/Obstacles:lidar_obstacle_detector/ObstacleInfoFeedback:std_msgs/Header:lidar_obstacle_detector/ObstacleRange:lidar_obstacle_detector/Obstacle:geometry_msgs/Point:lidar_obstacle_detector/ObstacleInfoActionFeedback:lidar_obstacle_detector/ObstacleInfoGoal"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg" "lidar_obstacle_detector/ObstacleRanges:geometry_msgs/Point:lidar_obstacle_detector/ObstacleRange"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg" "lidar_obstacle_detector/Obstacle:lidar_obstacle_detector/Obstacles"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg" NAME_WE)
add_custom_target(_lidar_obstacle_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_obstacle_detector" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg" "lidar_obstacle_detector/Obstacle"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_cpp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
)

### Generating Services

### Generating Module File
_generate_module_cpp(lidar_obstacle_detector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lidar_obstacle_detector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lidar_obstacle_detector_generate_messages lidar_obstacle_detector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_cpp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_obstacle_detector_gencpp)
add_dependencies(lidar_obstacle_detector_gencpp lidar_obstacle_detector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_obstacle_detector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_eus(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
)

### Generating Services

### Generating Module File
_generate_module_eus(lidar_obstacle_detector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lidar_obstacle_detector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lidar_obstacle_detector_generate_messages lidar_obstacle_detector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_eus _lidar_obstacle_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_obstacle_detector_geneus)
add_dependencies(lidar_obstacle_detector_geneus lidar_obstacle_detector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_obstacle_detector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_lisp(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
)

### Generating Services

### Generating Module File
_generate_module_lisp(lidar_obstacle_detector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lidar_obstacle_detector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lidar_obstacle_detector_generate_messages lidar_obstacle_detector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_lisp _lidar_obstacle_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_obstacle_detector_genlisp)
add_dependencies(lidar_obstacle_detector_genlisp lidar_obstacle_detector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_obstacle_detector_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_nodejs(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lidar_obstacle_detector
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lidar_obstacle_detector_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lidar_obstacle_detector_generate_messages lidar_obstacle_detector_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_nodejs _lidar_obstacle_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_obstacle_detector_gennodejs)
add_dependencies(lidar_obstacle_detector_gennodejs lidar_obstacle_detector_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_obstacle_detector_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)
_generate_msg_py(lidar_obstacle_detector
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
)

### Generating Services

### Generating Module File
_generate_module_py(lidar_obstacle_detector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lidar_obstacle_detector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lidar_obstacle_detector_generate_messages lidar_obstacle_detector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_obstacle_detector_generate_messages_py _lidar_obstacle_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_obstacle_detector_genpy)
add_dependencies(lidar_obstacle_detector_genpy lidar_obstacle_detector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_obstacle_detector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_obstacle_detector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(lidar_obstacle_detector_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lidar_obstacle_detector_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(lidar_obstacle_detector_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lidar_obstacle_detector_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_obstacle_detector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(lidar_obstacle_detector_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lidar_obstacle_detector_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(lidar_obstacle_detector_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lidar_obstacle_detector_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_obstacle_detector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(lidar_obstacle_detector_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lidar_obstacle_detector_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(lidar_obstacle_detector_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lidar_obstacle_detector_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_obstacle_detector
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(lidar_obstacle_detector_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lidar_obstacle_detector_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(lidar_obstacle_detector_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lidar_obstacle_detector_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_obstacle_detector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(lidar_obstacle_detector_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lidar_obstacle_detector_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(lidar_obstacle_detector_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lidar_obstacle_detector_generate_messages_py geometry_msgs_generate_messages_py)
endif()