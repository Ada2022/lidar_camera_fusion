;; Auto-generated. Do not edit!


(when (boundp 'sensor_fusion::ObstacleRanges)
  (if (not (find-package "SENSOR_FUSION"))
    (make-package "SENSOR_FUSION"))
  (shadow 'ObstacleRanges (find-package "SENSOR_FUSION")))
(unless (find-package "SENSOR_FUSION::OBSTACLERANGES")
  (make-package "SENSOR_FUSION::OBSTACLERANGES"))

(in-package "ROS")
;;//! \htmlinclude ObstacleRanges.msg.html


(defclass sensor_fusion::ObstacleRanges
  :super ros::object
  :slots (_obstacle_ranges ))

(defmethod sensor_fusion::ObstacleRanges
  (:init
   (&key
    ((:obstacle_ranges __obstacle_ranges) (let (r) (dotimes (i 0) (push (instance sensor_fusion::ObstacleRange :init) r)) r))
    )
   (send-super :init)
   (setq _obstacle_ranges __obstacle_ranges)
   self)
  (:obstacle_ranges
   (&rest __obstacle_ranges)
   (if (keywordp (car __obstacle_ranges))
       (send* _obstacle_ranges __obstacle_ranges)
     (progn
       (if __obstacle_ranges (setq _obstacle_ranges (car __obstacle_ranges)))
       _obstacle_ranges)))
  (:serialization-length
   ()
   (+
    ;; sensor_fusion/ObstacleRange[] _obstacle_ranges
    (apply #'+ (send-all _obstacle_ranges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_fusion/ObstacleRange[] _obstacle_ranges
     (write-long (length _obstacle_ranges) s)
     (dolist (elem _obstacle_ranges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_fusion/ObstacleRange[] _obstacle_ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_ranges (let (r) (dotimes (i n) (push (instance sensor_fusion::ObstacleRange :init) r)) r))
     (dolist (elem- _obstacle_ranges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_fusion::ObstacleRanges :md5sum-) "bad4fcf5a1b99d59695951fba091918c")
(setf (get sensor_fusion::ObstacleRanges :datatype-) "sensor_fusion/ObstacleRanges")
(setf (get sensor_fusion::ObstacleRanges :definition-)
      "ObstacleRange[] obstacle_ranges

================================================================================
MSG: sensor_fusion/ObstacleRange
string Class
float64 xmin
float64 ymin
float64 zmin
float64 xmax
float64 ymax
float64 zmax
geometry_msgs/Point[] points


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :sensor_fusion/ObstacleRanges "bad4fcf5a1b99d59695951fba091918c")


