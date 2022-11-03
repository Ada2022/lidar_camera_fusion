;; Auto-generated. Do not edit!


(when (boundp 'lidar_obstacle_detector::Obstacles)
  (if (not (find-package "LIDAR_OBSTACLE_DETECTOR"))
    (make-package "LIDAR_OBSTACLE_DETECTOR"))
  (shadow 'Obstacles (find-package "LIDAR_OBSTACLE_DETECTOR")))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLES")
  (make-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLES"))

(in-package "ROS")
;;//! \htmlinclude Obstacles.msg.html


(defclass lidar_obstacle_detector::Obstacles
  :super ros::object
  :slots (_obstacles ))

(defmethod lidar_obstacle_detector::Obstacles
  (:init
   (&key
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance lidar_obstacle_detector::Obstacle :init) r)) r))
    )
   (send-super :init)
   (setq _obstacles __obstacles)
   self)
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
    ;; lidar_obstacle_detector/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidar_obstacle_detector/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidar_obstacle_detector/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance lidar_obstacle_detector::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lidar_obstacle_detector::Obstacles :md5sum-) "75a819090f37b798d8bf3a5f74d98dc8")
(setf (get lidar_obstacle_detector::Obstacles :datatype-) "lidar_obstacle_detector/Obstacles")
(setf (get lidar_obstacle_detector::Obstacles :definition-)
      "Obstacle[] obstacles

================================================================================
MSG: lidar_obstacle_detector/Obstacle
string Class
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height

")



(provide :lidar_obstacle_detector/Obstacles "75a819090f37b798d8bf3a5f74d98dc8")


