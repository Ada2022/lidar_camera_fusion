# Install script for directory: /home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nancy/lidar_camera_fusion/perception_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_fusion/msg" TYPE FILE FILES
    "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBox.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/BoundingBoxes.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacle.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/Obstacles.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRange.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/msg/ObstacleRanges.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_fusion/action" TYPE FILE FILES
    "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/action/CheckForObjects.action"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/action/ObstacleInfo.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_fusion/msg" TYPE FILE FILES
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsAction.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionGoal.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionResult.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsActionFeedback.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsGoal.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsResult.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/CheckForObjectsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_fusion/msg" TYPE FILE FILES
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoAction.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionGoal.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionResult.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoActionFeedback.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoGoal.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoResult.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/sensor_fusion/msg/ObstacleInfoFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_fusion/cmake" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/build/sensor_fusion/catkin_generated/installspace/sensor_fusion-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/include/sensor_fusion")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/roseus/ros/sensor_fusion")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/common-lisp/ros/sensor_fusion")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/gennodejs/ros/sensor_fusion")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/nancy/lidar_camera_fusion/perception_ws/devel/lib/python2.7/dist-packages/sensor_fusion")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/lib/python2.7/dist-packages/sensor_fusion")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/build/sensor_fusion/catkin_generated/installspace/sensor_fusion.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_fusion/cmake" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/build/sensor_fusion/catkin_generated/installspace/sensor_fusion-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_fusion/cmake" TYPE FILE FILES
    "/home/nancy/lidar_camera_fusion/perception_ws/build/sensor_fusion/catkin_generated/installspace/sensor_fusionConfig.cmake"
    "/home/nancy/lidar_camera_fusion/perception_ws/build/sensor_fusion/catkin_generated/installspace/sensor_fusionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_fusion" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/src/sensor_fusion/package.xml")
endif()

