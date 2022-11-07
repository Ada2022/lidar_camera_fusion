
(cl:in-package :asdf)

(defsystem "lidar_obstacle_detector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Obstacle" :depends-on ("_package_Obstacle"))
    (:file "_package_Obstacle" :depends-on ("_package"))
    (:file "ObstacleInfoAction" :depends-on ("_package_ObstacleInfoAction"))
    (:file "_package_ObstacleInfoAction" :depends-on ("_package"))
    (:file "ObstacleInfoActionFeedback" :depends-on ("_package_ObstacleInfoActionFeedback"))
    (:file "_package_ObstacleInfoActionFeedback" :depends-on ("_package"))
    (:file "ObstacleInfoActionGoal" :depends-on ("_package_ObstacleInfoActionGoal"))
    (:file "_package_ObstacleInfoActionGoal" :depends-on ("_package"))
    (:file "ObstacleInfoActionResult" :depends-on ("_package_ObstacleInfoActionResult"))
    (:file "_package_ObstacleInfoActionResult" :depends-on ("_package"))
    (:file "ObstacleInfoFeedback" :depends-on ("_package_ObstacleInfoFeedback"))
    (:file "_package_ObstacleInfoFeedback" :depends-on ("_package"))
    (:file "ObstacleInfoGoal" :depends-on ("_package_ObstacleInfoGoal"))
    (:file "_package_ObstacleInfoGoal" :depends-on ("_package"))
    (:file "ObstacleInfoResult" :depends-on ("_package_ObstacleInfoResult"))
    (:file "_package_ObstacleInfoResult" :depends-on ("_package"))
    (:file "ObstacleRange" :depends-on ("_package_ObstacleRange"))
    (:file "_package_ObstacleRange" :depends-on ("_package"))
    (:file "ObstacleRanges" :depends-on ("_package_ObstacleRanges"))
    (:file "_package_ObstacleRanges" :depends-on ("_package"))
    (:file "Obstacles" :depends-on ("_package_Obstacles"))
    (:file "_package_Obstacles" :depends-on ("_package"))
  ))