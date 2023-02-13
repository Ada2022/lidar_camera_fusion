;; Auto-generated. Do not edit!


(when (boundp 'sensor_fusion::Obstacles)
  (if (not (find-package "SENSOR_FUSION"))
    (make-package "SENSOR_FUSION"))
  (shadow 'Obstacles (find-package "SENSOR_FUSION")))
(unless (find-package "SENSOR_FUSION::OBSTACLES")
  (make-package "SENSOR_FUSION::OBSTACLES"))

(in-package "ROS")
;;//! \htmlinclude Obstacles.msg.html


(defclass sensor_fusion::Obstacles
  :super ros::object
  :slots (_obstacles ))

(defmethod sensor_fusion::Obstacles
  (:init
   (&key
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance sensor_fusion::Obstacle :init) r)) r))
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
    ;; sensor_fusion/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_fusion/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_fusion/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance sensor_fusion::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_fusion::Obstacles :md5sum-) "75a819090f37b798d8bf3a5f74d98dc8")
(setf (get sensor_fusion::Obstacles :datatype-) "sensor_fusion/Obstacles")
(setf (get sensor_fusion::Obstacles :definition-)
      "Obstacle[] obstacles

================================================================================
MSG: sensor_fusion/Obstacle
string Class
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height


")



(provide :sensor_fusion/Obstacles "75a819090f37b798d8bf3a5f74d98dc8")


