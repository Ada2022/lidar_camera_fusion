# lidar_camera_fusion
Open four terminals # To do: Write them all into a launch file

1. roslaunch lidar_obstacle_detector rover.launch #make sure this step should be exeuted first
2. roslaunch lidar_camera_calibration play_rosbag.launch
3. roslaunch sensor_fusion sensor_fusion.launch 
4. roslaunch darknet_ros yolo_v4.launch 

