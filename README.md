# lidar_camera_fusion
Open four terminals # To do: Write them all into a launch file

1. roslaunch lidar_obstacle_detector rover.launch #make sure this step should be exeuted first
2. roslaunch sensor_fusion sensor_fusion.launch 
3. roslaunch darknet_ros yolo_v4.launch 

## Dependencies
1. `ros-melodic-ddynamic-reconfigure`
2. `ros-mdelodic-ros-numpy`
3. `ros-melodic-tf2-sensor-msgs`
4. `ros-melodic-autoware-msgs`
5. `ros-melodic-jsk-rviz-plugins`
7. `pip install numpy scipy matplotlib pykalman pyyaml rospkg`
8. `pip install opencv-python==4.2.0.32`