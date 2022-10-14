;; Auto-generated. Do not edit!


(when (boundp 'lidar_camera_calibration::Obstacles)
  (if (not (find-package "LIDAR_CAMERA_CALIBRATION"))
    (make-package "LIDAR_CAMERA_CALIBRATION"))
  (shadow 'Obstacles (find-package "LIDAR_CAMERA_CALIBRATION")))
(unless (find-package "LIDAR_CAMERA_CALIBRATION::OBSTACLES")
  (make-package "LIDAR_CAMERA_CALIBRATION::OBSTACLES"))

(in-package "ROS")
;;//! \htmlinclude Obstacles.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_camera_calibration::Obstacles
  :super ros::object
  :slots (_header _obstacles ))

(defmethod lidar_camera_calibration::Obstacles
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance lidar_camera_calibration::Obstacle :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacles __obstacles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lidar_camera_calibration/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lidar_camera_calibration/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lidar_camera_calibration/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance lidar_camera_calibration::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lidar_camera_calibration::Obstacles :md5sum-) "ce3a90ce5c09019d4f16be6c467925ec")
(setf (get lidar_camera_calibration::Obstacles :datatype-) "lidar_camera_calibration/Obstacles")
(setf (get lidar_camera_calibration::Obstacles :definition-)
      "Header header
Obstacle[] obstacles

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: lidar_camera_calibration/Obstacle
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height
string Class
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :lidar_camera_calibration/Obstacles "ce3a90ce5c09019d4f16be6c467925ec")


