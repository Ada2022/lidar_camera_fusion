
(cl:in-package :asdf)

(defsystem "sensor_fusion-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_fusion-msg
)
  :components ((:file "_package")
    (:file "ObstacleInfo" :depends-on ("_package_ObstacleInfo"))
    (:file "_package_ObstacleInfo" :depends-on ("_package"))
  ))