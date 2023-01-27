;; Auto-generated. Do not edit!


(when (boundp 'lidar_obstacle_detector::ObstacleRanges)
  (if (not (find-package "LIDAR_OBSTACLE_DETECTOR"))
    (make-package "LIDAR_OBSTACLE_DETECTOR"))
  (shadow 'ObstacleRanges (find-package "LIDAR_OBSTACLE_DETECTOR")))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLERANGES")
  (make-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLERANGES"))

(in-package "ROS")
;;//! \htmlinclude ObstacleRanges.msg.html


(defclass lidar_obstacle_detector::ObstacleRanges
  :super ros::object
  :slots (_obstacle_ranges ))

(defmethod lidar_obstacle_detector::ObstacleRanges
  (:init
   (&key
    ((:obstacle_ranges __obstacle_ranges) (let (r) (dotimes (i 0) (push (instance lidar_obstacle_detector::ObstacleRange :init) r)) r))
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
    ;; lidar_obstacle_detector/ObstacleRange[] _obstacle_ranges
    (apply #'+ (send-all _obstacle_ranges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidar_obstacle_detector/ObstacleRange[] _obstacle_ranges
     (write-long (length _obstacle_ranges) s)
     (dolist (elem _obstacle_ranges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidar_obstacle_detector/ObstacleRange[] _obstacle_ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_ranges (let (r) (dotimes (i n) (push (instance lidar_obstacle_detector::ObstacleRange :init) r)) r))
     (dolist (elem- _obstacle_ranges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lidar_obstacle_detector::ObstacleRanges :md5sum-) "bad4fcf5a1b99d59695951fba091918c")
(setf (get lidar_obstacle_detector::ObstacleRanges :datatype-) "lidar_obstacle_detector/ObstacleRanges")
(setf (get lidar_obstacle_detector::ObstacleRanges :definition-)
      "ObstacleRange[] obstacle_ranges

================================================================================
MSG: lidar_obstacle_detector/ObstacleRange
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



(provide :lidar_obstacle_detector/ObstacleRanges "bad4fcf5a1b99d59695951fba091918c")


