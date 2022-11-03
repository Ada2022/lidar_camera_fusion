;; Auto-generated. Do not edit!


(when (boundp 'lidar_obstacle_detector::ObstacleInfo)
  (if (not (find-package "LIDAR_OBSTACLE_DETECTOR"))
    (make-package "LIDAR_OBSTACLE_DETECTOR"))
  (shadow 'ObstacleInfo (find-package "LIDAR_OBSTACLE_DETECTOR")))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFO")
  (make-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFO"))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFOREQUEST")
  (make-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFOREQUEST"))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFORESPONSE")
  (make-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFORESPONSE"))

(in-package "ROS")





(defclass lidar_obstacle_detector::ObstacleInfoRequest
  :super ros::object
  :slots (_obstacle_ranges _obstacles ))

(defmethod lidar_obstacle_detector::ObstacleInfoRequest
  (:init
   (&key
    ((:obstacle_ranges __obstacle_ranges) (instance lidar_obstacle_detector::ObstacleRanges :init))
    ((:obstacles __obstacles) (instance lidar_obstacle_detector::Obstacles :init))
    )
   (send-super :init)
   (setq _obstacle_ranges __obstacle_ranges)
   (setq _obstacles __obstacles)
   self)
  (:obstacle_ranges
   (&rest __obstacle_ranges)
   (if (keywordp (car __obstacle_ranges))
       (send* _obstacle_ranges __obstacle_ranges)
     (progn
       (if __obstacle_ranges (setq _obstacle_ranges (car __obstacle_ranges)))
       _obstacle_ranges)))
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
    ;; lidar_obstacle_detector/ObstacleRanges _obstacle_ranges
    (send _obstacle_ranges :serialization-length)
    ;; lidar_obstacle_detector/Obstacles _obstacles
    (send _obstacles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidar_obstacle_detector/ObstacleRanges _obstacle_ranges
       (send _obstacle_ranges :serialize s)
     ;; lidar_obstacle_detector/Obstacles _obstacles
       (send _obstacles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidar_obstacle_detector/ObstacleRanges _obstacle_ranges
     (send _obstacle_ranges :deserialize buf ptr-) (incf ptr- (send _obstacle_ranges :serialization-length))
   ;; lidar_obstacle_detector/Obstacles _obstacles
     (send _obstacles :deserialize buf ptr-) (incf ptr- (send _obstacles :serialization-length))
   ;;
   self)
  )

(defclass lidar_obstacle_detector::ObstacleInfoResponse
  :super ros::object
  :slots ())

(defmethod lidar_obstacle_detector::ObstacleInfoResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass lidar_obstacle_detector::ObstacleInfo
  :super ros::object
  :slots ())

(setf (get lidar_obstacle_detector::ObstacleInfo :md5sum-) "22227c072563c2b3c6b68511985576c3")
(setf (get lidar_obstacle_detector::ObstacleInfo :datatype-) "lidar_obstacle_detector/ObstacleInfo")
(setf (get lidar_obstacle_detector::ObstacleInfo :request) lidar_obstacle_detector::ObstacleInfoRequest)
(setf (get lidar_obstacle_detector::ObstacleInfo :response) lidar_obstacle_detector::ObstacleInfoResponse)

(defmethod lidar_obstacle_detector::ObstacleInfoRequest
  (:response () (instance lidar_obstacle_detector::ObstacleInfoResponse :init)))

(setf (get lidar_obstacle_detector::ObstacleInfoRequest :md5sum-) "22227c072563c2b3c6b68511985576c3")
(setf (get lidar_obstacle_detector::ObstacleInfoRequest :datatype-) "lidar_obstacle_detector/ObstacleInfoRequest")
(setf (get lidar_obstacle_detector::ObstacleInfoRequest :definition-)
      "#request messages
lidar_obstacle_detector/ObstacleRanges obstacle_ranges

#server message
lidar_obstacle_detector/Obstacles obstacles


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

================================================================================
MSG: lidar_obstacle_detector/Obstacles
Obstacle[] obstacles

================================================================================
MSG: lidar_obstacle_detector/Obstacle
string Class
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height
---
")

(setf (get lidar_obstacle_detector::ObstacleInfoResponse :md5sum-) "22227c072563c2b3c6b68511985576c3")
(setf (get lidar_obstacle_detector::ObstacleInfoResponse :datatype-) "lidar_obstacle_detector/ObstacleInfoResponse")
(setf (get lidar_obstacle_detector::ObstacleInfoResponse :definition-)
      "#request messages
lidar_obstacle_detector/ObstacleRanges obstacle_ranges

#server message
lidar_obstacle_detector/Obstacles obstacles


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

================================================================================
MSG: lidar_obstacle_detector/Obstacles
Obstacle[] obstacles

================================================================================
MSG: lidar_obstacle_detector/Obstacle
string Class
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height
---
")



(provide :lidar_obstacle_detector/ObstacleInfo "22227c072563c2b3c6b68511985576c3")


