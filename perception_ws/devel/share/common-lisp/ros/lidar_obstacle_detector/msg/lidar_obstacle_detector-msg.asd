
(cl:in-package :asdf)

(defsystem "lidar_obstacle_detector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LidarBBox" :depends-on ("_package_LidarBBox"))
    (:file "_package_LidarBBox" :depends-on ("_package"))
    (:file "Obstacle" :depends-on ("_package_Obstacle"))
    (:file "_package_Obstacle" :depends-on ("_package"))
    (:file "ObstacleRange" :depends-on ("_package_ObstacleRange"))
    (:file "_package_ObstacleRange" :depends-on ("_package"))
    (:file "ObstacleRanges" :depends-on ("_package_ObstacleRanges"))
    (:file "_package_ObstacleRanges" :depends-on ("_package"))
    (:file "Obstacles" :depends-on ("_package_Obstacles"))
    (:file "_package_Obstacles" :depends-on ("_package"))
    (:file "fusion2lidarAction" :depends-on ("_package_fusion2lidarAction"))
    (:file "_package_fusion2lidarAction" :depends-on ("_package"))
    (:file "fusion2lidarActionFeedback" :depends-on ("_package_fusion2lidarActionFeedback"))
    (:file "_package_fusion2lidarActionFeedback" :depends-on ("_package"))
    (:file "fusion2lidarActionGoal" :depends-on ("_package_fusion2lidarActionGoal"))
    (:file "_package_fusion2lidarActionGoal" :depends-on ("_package"))
    (:file "fusion2lidarActionResult" :depends-on ("_package_fusion2lidarActionResult"))
    (:file "_package_fusion2lidarActionResult" :depends-on ("_package"))
    (:file "fusion2lidarFeedback" :depends-on ("_package_fusion2lidarFeedback"))
    (:file "_package_fusion2lidarFeedback" :depends-on ("_package"))
    (:file "fusion2lidarGoal" :depends-on ("_package_fusion2lidarGoal"))
    (:file "_package_fusion2lidarGoal" :depends-on ("_package"))
    (:file "fusion2lidarResult" :depends-on ("_package_fusion2lidarResult"))
    (:file "_package_fusion2lidarResult" :depends-on ("_package"))
  ))