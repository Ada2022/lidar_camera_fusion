;; Auto-generated. Do not edit!


(when (boundp 'lidar_obstacle_detector::ObstacleInfoGoal)
  (if (not (find-package "LIDAR_OBSTACLE_DETECTOR"))
    (make-package "LIDAR_OBSTACLE_DETECTOR"))
  (shadow 'ObstacleInfoGoal (find-package "LIDAR_OBSTACLE_DETECTOR")))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFOGOAL")
  (make-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFOGOAL"))

(in-package "ROS")
;;//! \htmlinclude ObstacleInfoGoal.msg.html


(defclass lidar_obstacle_detector::ObstacleInfoGoal
  :super ros::object
  :slots (_obstacle_ranges ))

(defmethod lidar_obstacle_detector::ObstacleInfoGoal
  (:init
   (&key
    ((:obstacle_ranges __obstacle_ranges) (instance lidar_obstacle_detector::ObstacleRanges :init))
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
    ;; lidar_obstacle_detector/ObstacleRanges _obstacle_ranges
    (send _obstacle_ranges :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidar_obstacle_detector/ObstacleRanges _obstacle_ranges
       (send _obstacle_ranges :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidar_obstacle_detector/ObstacleRanges _obstacle_ranges
     (send _obstacle_ranges :deserialize buf ptr-) (incf ptr- (send _obstacle_ranges :serialization-length))
   ;;
   self)
  )

(setf (get lidar_obstacle_detector::ObstacleInfoGoal :md5sum-) "bd257e600b199f8f28a59b9f7e1b3dec")
(setf (get lidar_obstacle_detector::ObstacleInfoGoal :datatype-) "lidar_obstacle_detector/ObstacleInfoGoal")
(setf (get lidar_obstacle_detector::ObstacleInfoGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Return objects location 

# Goal definition
lidar_obstacle_detector/ObstacleRanges obstacle_ranges


================================================================================
MSG: lidar_obstacle_detector/ObstacleRanges
ObstacleRange[] obstacle_ranges

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



(provide :lidar_obstacle_detector/ObstacleInfoGoal "bd257e600b199f8f28a59b9f7e1b3dec")

