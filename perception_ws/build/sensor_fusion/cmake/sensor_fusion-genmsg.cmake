# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sensor_fusion: 20 messages, 0 services")

set(MSG_I_FLAGS "-Isensor_fusion:/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg;-Isensor_fusion:/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sensor_fusion_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg" "actionlib_msgs/GoalID:sensor_fusion/ObstacleInfoGoal:sensor_fusion/ObstacleRanges:std_msgs/Header:sensor_fusion/ObstacleRange:geometry_msgs/Point"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg" "sensor_fusion/ObstacleInfoFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg" "sensor_fusion/BoundingBox:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:sensor_fusion/BoundingBox:sensor_fusion/BoundingBoxes:std_msgs/Header:sensor_fusion/CheckForObjectsResult"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg" "actionlib_msgs/GoalID:sensor_fusion/ObstacleInfoGoal:sensor_fusion/Obstacle:actionlib_msgs/GoalStatus:sensor_fusion/ObstacleInfoResult:sensor_fusion/ObstacleInfoActionFeedback:std_msgs/Header:sensor_fusion/ObstacleInfoActionResult:sensor_fusion/Obstacles:sensor_fusion/ObstacleRanges:sensor_fusion/ObstacleRange:geometry_msgs/Point:sensor_fusion/ObstacleInfoFeedback:sensor_fusion/ObstacleInfoActionGoal"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg" "actionlib_msgs/GoalID:sensor_fusion/CheckForObjectsActionResult:sensor_msgs/Image:sensor_fusion/BoundingBox:actionlib_msgs/GoalStatus:sensor_fusion/CheckForObjectsResult:sensor_fusion/BoundingBoxes:sensor_fusion/CheckForObjectsFeedback:sensor_fusion/CheckForObjectsActionFeedback:std_msgs/Header:sensor_fusion/CheckForObjectsActionGoal:sensor_fusion/CheckForObjectsGoal"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg" "actionlib_msgs/GoalID:sensor_fusion/CheckForObjectsGoal:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg" ""
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg" "geometry_msgs/Point:sensor_fusion/ObstacleRanges:sensor_fusion/ObstacleRange"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg" "geometry_msgs/Point:sensor_fusion/ObstacleRange"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:sensor_fusion/CheckForObjectsFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg" "sensor_fusion/Obstacle"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg" "actionlib_msgs/GoalID:sensor_fusion/Obstacles:sensor_fusion/Obstacle:actionlib_msgs/GoalStatus:std_msgs/Header:sensor_fusion/ObstacleInfoResult"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg" "sensor_fusion/BoundingBox:sensor_fusion/BoundingBoxes:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg" ""
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg" "sensor_fusion/Obstacles:sensor_fusion/Obstacle"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg" ""
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg" NAME_WE)
add_custom_target(_sensor_fusion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_fusion" "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_cpp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
)

### Generating Services

### Generating Module File
_generate_module_cpp(sensor_fusion
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sensor_fusion_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sensor_fusion_generate_messages sensor_fusion_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_cpp _sensor_fusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_fusion_gencpp)
add_dependencies(sensor_fusion_gencpp sensor_fusion_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_fusion_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)
_generate_msg_eus(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
)

### Generating Services

### Generating Module File
_generate_module_eus(sensor_fusion
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sensor_fusion_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sensor_fusion_generate_messages sensor_fusion_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_eus _sensor_fusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_fusion_geneus)
add_dependencies(sensor_fusion_geneus sensor_fusion_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_fusion_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)
_generate_msg_lisp(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
)

### Generating Services

### Generating Module File
_generate_module_lisp(sensor_fusion
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sensor_fusion_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sensor_fusion_generate_messages sensor_fusion_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_lisp _sensor_fusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_fusion_genlisp)
add_dependencies(sensor_fusion_genlisp sensor_fusion_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_fusion_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)
_generate_msg_nodejs(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sensor_fusion
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sensor_fusion_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sensor_fusion_generate_messages sensor_fusion_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_nodejs _sensor_fusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_fusion_gennodejs)
add_dependencies(sensor_fusion_gennodejs sensor_fusion_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_fusion_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)
_generate_msg_py(sensor_fusion
  "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
)

### Generating Services

### Generating Module File
_generate_module_py(sensor_fusion
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sensor_fusion_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sensor_fusion_generate_messages sensor_fusion_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg" NAME_WE)
add_dependencies(sensor_fusion_generate_messages_py _sensor_fusion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_fusion_genpy)
add_dependencies(sensor_fusion_genpy sensor_fusion_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_fusion_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_fusion
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(sensor_fusion_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sensor_fusion_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sensor_fusion_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sensor_fusion_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_fusion
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(sensor_fusion_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sensor_fusion_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sensor_fusion_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sensor_fusion_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_fusion
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(sensor_fusion_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sensor_fusion_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sensor_fusion_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sensor_fusion_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_fusion
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(sensor_fusion_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sensor_fusion_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sensor_fusion_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sensor_fusion_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_fusion
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(sensor_fusion_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sensor_fusion_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sensor_fusion_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sensor_fusion_generate_messages_py geometry_msgs_generate_messages_py)
endif()
