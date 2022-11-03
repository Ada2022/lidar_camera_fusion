
(cl:in-package :asdf)

(defsystem "lidar_obstacle_detector-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :lidar_obstacle_detector-msg
)
  :components ((:file "_package")
    (:file "ObstacleInfo" :depends-on ("_package_ObstacleInfo"))
    (:file "_package_ObstacleInfo" :depends-on ("_package"))
  ))