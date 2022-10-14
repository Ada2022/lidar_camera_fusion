;; Auto-generated. Do not edit!


(when (boundp 'lidar_camera_calibration::ObjectCount)
  (if (not (find-package "LIDAR_CAMERA_CALIBRATION"))
    (make-package "LIDAR_CAMERA_CALIBRATION"))
  (shadow 'ObjectCount (find-package "LIDAR_CAMERA_CALIBRATION")))
(unless (find-package "LIDAR_CAMERA_CALIBRATION::OBJECTCOUNT")
  (make-package "LIDAR_CAMERA_CALIBRATION::OBJECTCOUNT"))

(in-package "ROS")
;;//! \htmlinclude ObjectCount.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_camera_calibration::ObjectCount
  :super ros::object
  :slots (_header _count ))

(defmethod lidar_camera_calibration::ObjectCount
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _count (round __count))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _count
       (write-byte _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _count 127) (setq _count (- _count 256)))
   ;;
   self)
  )

(setf (get lidar_camera_calibration::ObjectCount :md5sum-) "123675bf4420958597b5a78cb3800a1f")
(setf (get lidar_camera_calibration::ObjectCount :datatype-) "lidar_camera_calibration/ObjectCount")
(setf (get lidar_camera_calibration::ObjectCount :definition-)
      "Header header
int8 count

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

")



(provide :lidar_camera_calibration/ObjectCount "123675bf4420958597b5a78cb3800a1f")


