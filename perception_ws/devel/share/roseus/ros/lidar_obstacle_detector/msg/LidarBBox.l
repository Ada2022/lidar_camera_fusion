;; Auto-generated. Do not edit!


(when (boundp 'lidar_obstacle_detector::LidarBBox)
  (if (not (find-package "LIDAR_OBSTACLE_DETECTOR"))
    (make-package "LIDAR_OBSTACLE_DETECTOR"))
  (shadow 'LidarBBox (find-package "LIDAR_OBSTACLE_DETECTOR")))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::LIDARBBOX")
  (make-package "LIDAR_OBSTACLE_DETECTOR::LIDARBBOX"))

(in-package "ROS")
;;//! \htmlinclude LidarBBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lidar_obstacle_detector::LidarBBox
  :super ros::object
  :slots (_point_min _point_max ))

(defmethod lidar_obstacle_detector::LidarBBox
  (:init
   (&key
    ((:point_min __point_min) (instance geometry_msgs::Point :init))
    ((:point_max __point_max) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point_min __point_min)
   (setq _point_max __point_max)
   self)
  (:point_min
   (&rest __point_min)
   (if (keywordp (car __point_min))
       (send* _point_min __point_min)
     (progn
       (if __point_min (setq _point_min (car __point_min)))
       _point_min)))
  (:point_max
   (&rest __point_max)
   (if (keywordp (car __point_max))
       (send* _point_max __point_max)
     (progn
       (if __point_max (setq _point_max (car __point_max)))
       _point_max)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point_min
    (send _point_min :serialization-length)
    ;; geometry_msgs/Point _point_max
    (send _point_max :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point_min
       (send _point_min :serialize s)
     ;; geometry_msgs/Point _point_max
       (send _point_max :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point_min
     (send _point_min :deserialize buf ptr-) (incf ptr- (send _point_min :serialization-length))
   ;; geometry_msgs/Point _point_max
     (send _point_max :deserialize buf ptr-) (incf ptr- (send _point_max :serialization-length))
   ;;
   self)
  )

(setf (get lidar_obstacle_detector::LidarBBox :md5sum-) "32eb6a28d30b2cdd8029c55836d8a97e")
(setf (get lidar_obstacle_detector::LidarBBox :datatype-) "lidar_obstacle_detector/LidarBBox")
(setf (get lidar_obstacle_detector::LidarBBox :definition-)
      "geometry_msgs/Point point_min
geometry_msgs/Point point_max

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :lidar_obstacle_detector/LidarBBox "32eb6a28d30b2cdd8029c55836d8a97e")

