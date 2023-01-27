# Install script for directory: /home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_obstacle_detector/msg" TYPE FILE FILES
    "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacle.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/Obstacles.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRange.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/ObstacleRanges.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/msg/LidarBBox.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_obstacle_detector/action" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/action/fusion2lidar.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_obstacle_detector/msg" TYPE FILE FILES
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/fusion2lidarAction.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/fusion2lidarActionGoal.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/fusion2lidarActionResult.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/fusion2lidarActionFeedback.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/fusion2lidarGoal.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/fusion2lidarResult.msg"
    "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/lidar_obstacle_detector/msg/fusion2lidarFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_obstacle_detector/cmake" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/build/lidar_obstacle_detector/catkin_generated/installspace/lidar_obstacle_detector-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/include/lidar_obstacle_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/roseus/ros/lidar_obstacle_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/common-lisp/ros/lidar_obstacle_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/share/gennodejs/ros/lidar_obstacle_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/nancy/lidar_camera_fusion/perception_ws/devel/lib/python2.7/dist-packages/lidar_obstacle_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/lib/python2.7/dist-packages/lidar_obstacle_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lidar_obstacle_detector" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/include/lidar_obstacle_detector/obstacle_detectorConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/lidar_obstacle_detector" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/lib/python2.7/dist-packages/lidar_obstacle_detector/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/nancy/lidar_camera_fusion/perception_ws/devel/lib/python2.7/dist-packages/lidar_obstacle_detector/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/lidar_obstacle_detector" TYPE DIRECTORY FILES "/home/nancy/lidar_camera_fusion/perception_ws/devel/lib/python2.7/dist-packages/lidar_obstacle_detector/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/build/lidar_obstacle_detector/catkin_generated/installspace/lidar_obstacle_detector.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_obstacle_detector/cmake" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/build/lidar_obstacle_detector/catkin_generated/installspace/lidar_obstacle_detector-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_obstacle_detector/cmake" TYPE FILE FILES
    "/home/nancy/lidar_camera_fusion/perception_ws/build/lidar_obstacle_detector/catkin_generated/installspace/lidar_obstacle_detectorConfig.cmake"
    "/home/nancy/lidar_camera_fusion/perception_ws/build/lidar_obstacle_detector/catkin_generated/installspace/lidar_obstacle_detectorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar_obstacle_detector" TYPE FILE FILES "/home/nancy/lidar_camera_fusion/perception_ws/src/lidar_obstacle_detector/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/lidar_obstacle_detector" TYPE PROGRAM FILES "/home/nancy/lidar_camera_fusion/perception_ws/build/lidar_obstacle_detector/catkin_generated/installspace/safety_checker.py")
endif()

