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
  :slots (_position _dimension ))

(defmethod lidar_obstacle_detector::LidarBBox
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:dimension __dimension) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _dimension __dimension)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:dimension
   (&rest __dimension)
   (if (keywordp (car __dimension))
       (send* _dimension __dimension)
     (progn
       (if __dimension (setq _dimension (car __dimension)))
       _dimension)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Point _dimension
    (send _dimension :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Point _dimension
       (send _dimension :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Point _dimension
     (send _dimension :deserialize buf ptr-) (incf ptr- (send _dimension :serialization-length))
   ;;
   self)
  )

(setf (get lidar_obstacle_detector::LidarBBox :md5sum-) "5a7abdc1c089cd4f9701ead0a10c7460")
(setf (get lidar_obstacle_detector::LidarBBox :datatype-) "lidar_obstacle_detector/LidarBBox")
(setf (get lidar_obstacle_detector::LidarBBox :definition-)
      "geometry_msgs/Point position
geometry_msgs/Point dimension

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :lidar_obstacle_detector/LidarBBox "5a7abdc1c089cd4f9701ead0a10c7460")


