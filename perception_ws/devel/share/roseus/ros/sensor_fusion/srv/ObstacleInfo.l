;; Auto-generated. Do not edit!


(when (boundp 'sensor_fusion::ObstacleInfo)
  (if (not (find-package "SENSOR_FUSION"))
    (make-package "SENSOR_FUSION"))
  (shadow 'ObstacleInfo (find-package "SENSOR_FUSION")))
(unless (find-package "SENSOR_FUSION::OBSTACLEINFO")
  (make-package "SENSOR_FUSION::OBSTACLEINFO"))
(unless (find-package "SENSOR_FUSION::OBSTACLEINFOREQUEST")
  (make-package "SENSOR_FUSION::OBSTACLEINFOREQUEST"))
(unless (find-package "SENSOR_FUSION::OBSTACLEINFORESPONSE")
  (make-package "SENSOR_FUSION::OBSTACLEINFORESPONSE"))

(in-package "ROS")





(defclass sensor_fusion::ObstacleInfoRequest
  :super ros::object
  :slots (_obstacle_ranges _obstacles ))

(defmethod sensor_fusion::ObstacleInfoRequest
  (:init
   (&key
    ((:obstacle_ranges __obstacle_ranges) (instance sensor_fusion::ObstacleRanges :init))
    ((:obstacles __obstacles) (instance sensor_fusion::Obstacles :init))
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
    ;; sensor_fusion/ObstacleRanges _obstacle_ranges
    (send _obstacle_ranges :serialization-length)
    ;; sensor_fusion/Obstacles _obstacles
    (send _obstacles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_fusion/ObstacleRanges _obstacle_ranges
       (send _obstacle_ranges :serialize s)
     ;; sensor_fusion/Obstacles _obstacles
       (send _obstacles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_fusion/ObstacleRanges _obstacle_ranges
     (send _obstacle_ranges :deserialize buf ptr-) (incf ptr- (send _obstacle_ranges :serialization-length))
   ;; sensor_fusion/Obstacles _obstacles
     (send _obstacles :deserialize buf ptr-) (incf ptr- (send _obstacles :serialization-length))
   ;;
   self)
  )

(defclass sensor_fusion::ObstacleInfoResponse
  :super ros::object
  :slots ())

(defmethod sensor_fusion::ObstacleInfoResponse
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

(defclass sensor_fusion::ObstacleInfo
  :super ros::object
  :slots ())

(setf (get sensor_fusion::ObstacleInfo :md5sum-) "22227c072563c2b3c6b68511985576c3")
(setf (get sensor_fusion::ObstacleInfo :datatype-) "sensor_fusion/ObstacleInfo")
(setf (get sensor_fusion::ObstacleInfo :request) sensor_fusion::ObstacleInfoRequest)
(setf (get sensor_fusion::ObstacleInfo :response) sensor_fusion::ObstacleInfoResponse)

(defmethod sensor_fusion::ObstacleInfoRequest
  (:response () (instance sensor_fusion::ObstacleInfoResponse :init)))

(setf (get sensor_fusion::ObstacleInfoRequest :md5sum-) "22227c072563c2b3c6b68511985576c3")
(setf (get sensor_fusion::ObstacleInfoRequest :datatype-) "sensor_fusion/ObstacleInfoRequest")
(setf (get sensor_fusion::ObstacleInfoRequest :definition-)
      "#request messages
sensor_fusion/ObstacleRanges obstacle_ranges

#server message
sensor_fusion/Obstacles obstacles


================================================================================
MSG: sensor_fusion/ObstacleRanges
ObstacleRange[] obstacle_ranges

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

================================================================================
MSG: sensor_fusion/Obstacles
Obstacle[] obstacles

================================================================================
MSG: sensor_fusion/Obstacle
string Class
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height

---
")

(setf (get sensor_fusion::ObstacleInfoResponse :md5sum-) "22227c072563c2b3c6b68511985576c3")
(setf (get sensor_fusion::ObstacleInfoResponse :datatype-) "sensor_fusion/ObstacleInfoResponse")
(setf (get sensor_fusion::ObstacleInfoResponse :definition-)
      "#request messages
sensor_fusion/ObstacleRanges obstacle_ranges

#server message
sensor_fusion/Obstacles obstacles


================================================================================
MSG: sensor_fusion/ObstacleRanges
ObstacleRange[] obstacle_ranges

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

================================================================================
MSG: sensor_fusion/Obstacles
Obstacle[] obstacles

================================================================================
MSG: sensor_fusion/Obstacle
string Class
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height

---
")



(provide :sensor_fusion/ObstacleInfo "22227c072563c2b3c6b68511985576c3")


