
(cl:in-package :asdf)

(defsystem "lidar_obstacle_detector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Obstacle" :depends-on ("_package_Obstacle"))
    (:file "_package_Obstacle" :depends-on ("_package"))
    (:file "ObstacleRange" :depends-on ("_package_ObstacleRange"))
    (:file "_package_ObstacleRange" :depends-on ("_package"))
    (:file "ObstacleRanges" :depends-on ("_package_ObstacleRanges"))
    (:file "_package_ObstacleRanges" :depends-on ("_package"))
    (:file "Obstacles" :depends-on ("_package_Obstacles"))
    (:file "_package_Obstacles" :depends-on ("_package"))
  ))