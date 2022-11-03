# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lidar_camera_calibration: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ilidar_camera_calibration:/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lidar_camera_calibration_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg" NAME_WE)
add_custom_target(_lidar_camera_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_camera_calibration" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg" NAME_WE)
add_custom_target(_lidar_camera_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_camera_calibration" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg" "geometry_msgs/Point:lidar_camera_calibration/Obstacle:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg" NAME_WE)
add_custom_target(_lidar_camera_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_camera_calibration" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg" "lidar_camera_calibration/BoundingBox:std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg" NAME_WE)
add_custom_target(_lidar_camera_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_camera_calibration" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_lidar_camera_calibration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_camera_calibration" "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_cpp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_cpp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_cpp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_cpp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_camera_calibration
)

### Generating Services

### Generating Module File
_generate_module_cpp(lidar_camera_calibration
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_camera_calibration
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lidar_camera_calibration_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lidar_camera_calibration_generate_messages lidar_camera_calibration_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_cpp _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_cpp _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_cpp _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_cpp _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_cpp _lidar_camera_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_camera_calibration_gencpp)
add_dependencies(lidar_camera_calibration_gencpp lidar_camera_calibration_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_camera_calibration_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_eus(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_eus(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_eus(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_eus(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_camera_calibration
)

### Generating Services

### Generating Module File
_generate_module_eus(lidar_camera_calibration
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_camera_calibration
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lidar_camera_calibration_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lidar_camera_calibration_generate_messages lidar_camera_calibration_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_eus _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_eus _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_eus _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_eus _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_eus _lidar_camera_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_camera_calibration_geneus)
add_dependencies(lidar_camera_calibration_geneus lidar_camera_calibration_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_camera_calibration_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_lisp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_lisp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_lisp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_lisp(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_camera_calibration
)

### Generating Services

### Generating Module File
_generate_module_lisp(lidar_camera_calibration
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_camera_calibration
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lidar_camera_calibration_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lidar_camera_calibration_generate_messages lidar_camera_calibration_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_lisp _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_lisp _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_lisp _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_lisp _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_lisp _lidar_camera_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_camera_calibration_genlisp)
add_dependencies(lidar_camera_calibration_genlisp lidar_camera_calibration_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_camera_calibration_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_nodejs(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_nodejs(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_nodejs(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_nodejs(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_camera_calibration
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lidar_camera_calibration
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_camera_calibration
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lidar_camera_calibration_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lidar_camera_calibration_generate_messages lidar_camera_calibration_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_nodejs _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_nodejs _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_nodejs _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_nodejs _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_nodejs _lidar_camera_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_camera_calibration_gennodejs)
add_dependencies(lidar_camera_calibration_gennodejs lidar_camera_calibration_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_camera_calibration_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_py(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_py(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_py(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration
)
_generate_msg_py(lidar_camera_calibration
  "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration
)

### Generating Services

### Generating Module File
_generate_module_py(lidar_camera_calibration
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lidar_camera_calibration_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lidar_camera_calibration_generate_messages lidar_camera_calibration_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacle.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_py _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/Obstacles.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_py _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_py _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/ObjectCount.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_py _lidar_camera_calibration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_camera_calibration/msg/BoundingBox.msg" NAME_WE)
add_dependencies(lidar_camera_calibration_generate_messages_py _lidar_camera_calibration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_camera_calibration_genpy)
add_dependencies(lidar_camera_calibration_genpy lidar_camera_calibration_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_camera_calibration_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_camera_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_camera_calibration
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lidar_camera_calibration_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lidar_camera_calibration_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_camera_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_camera_calibration
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lidar_camera_calibration_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lidar_camera_calibration_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_camera_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_camera_calibration
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lidar_camera_calibration_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lidar_camera_calibration_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_camera_calibration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lidar_camera_calibration
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lidar_camera_calibration_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lidar_camera_calibration_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_camera_calibration
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lidar_camera_calibration_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lidar_camera_calibration_generate_messages_py geometry_msgs_generate_messages_py)
endif()
