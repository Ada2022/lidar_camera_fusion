;; Auto-generated. Do not edit!


(when (boundp 'sensor_fusion::LidarBBox)
  (if (not (find-package "SENSOR_FUSION"))
    (make-package "SENSOR_FUSION"))
  (shadow 'LidarBBox (find-package "SENSOR_FUSION")))
(unless (find-package "SENSOR_FUSION::LIDARBBOX")
  (make-package "SENSOR_FUSION::LIDARBBOX"))

(in-package "ROS")
;;//! \htmlinclude LidarBBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass sensor_fusion::LidarBBox
  :super ros::object
  :slots (_position _dimension ))

(defmethod sensor_fusion::LidarBBox
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

(setf (get sensor_fusion::LidarBBox :md5sum-) "5a7abdc1c089cd4f9701ead0a10c7460")
(setf (get sensor_fusion::LidarBBox :datatype-) "sensor_fusion/LidarBBox")
(setf (get sensor_fusion::LidarBBox :definition-)
      "geometry_msgs/Point position
geometry_msgs/Point dimension

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :sensor_fusion/LidarBBox "5a7abdc1c089cd4f9701ead0a10c7460")


