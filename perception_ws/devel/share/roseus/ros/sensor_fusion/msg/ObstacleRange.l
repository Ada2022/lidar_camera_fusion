;; Auto-generated. Do not edit!


(when (boundp 'sensor_fusion::ObstacleRange)
  (if (not (find-package "SENSOR_FUSION"))
    (make-package "SENSOR_FUSION"))
  (shadow 'ObstacleRange (find-package "SENSOR_FUSION")))
(unless (find-package "SENSOR_FUSION::OBSTACLERANGE")
  (make-package "SENSOR_FUSION::OBSTACLERANGE"))

(in-package "ROS")
;;//! \htmlinclude ObstacleRange.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass sensor_fusion::ObstacleRange
  :super ros::object
  :slots (_Class _xmin _ymin _zmin _xmax _ymax _zmax _points ))

(defmethod sensor_fusion::ObstacleRange
  (:init
   (&key
    ((:Class __Class) "")
    ((:xmin __xmin) 0.0)
    ((:ymin __ymin) 0.0)
    ((:zmin __zmin) 0.0)
    ((:xmax __xmax) 0.0)
    ((:ymax __ymax) 0.0)
    ((:zmax __zmax) 0.0)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _Class (string __Class))
   (setq _xmin (float __xmin))
   (setq _ymin (float __ymin))
   (setq _zmin (float __zmin))
   (setq _xmax (float __xmax))
   (setq _ymax (float __ymax))
   (setq _zmax (float __zmax))
   (setq _points __points)
   self)
  (:Class
   (&optional __Class)
   (if __Class (setq _Class __Class)) _Class)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:zmin
   (&optional __zmin)
   (if __zmin (setq _zmin __zmin)) _zmin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:zmax
   (&optional __zmax)
   (if __zmax (setq _zmax __zmax)) _zmax)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; string _Class
    4 (length _Class)
    ;; float64 _xmin
    8
    ;; float64 _ymin
    8
    ;; float64 _zmin
    8
    ;; float64 _xmax
    8
    ;; float64 _ymax
    8
    ;; float64 _zmax
    8
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Class
       (write-long (length _Class) s) (princ _Class s)
     ;; float64 _xmin
       (sys::poke _xmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ymin
       (sys::poke _ymin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _zmin
       (sys::poke _zmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xmax
       (sys::poke _xmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ymax
       (sys::poke _ymax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _zmax
       (sys::poke _zmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _xmin
     (setq _xmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ymin
     (setq _ymin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _zmin
     (setq _zmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xmax
     (setq _xmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ymax
     (setq _ymax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _zmax
     (setq _zmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_fusion::ObstacleRange :md5sum-) "95436a53898d7edf4410a79f8f877033")
(setf (get sensor_fusion::ObstacleRange :datatype-) "sensor_fusion/ObstacleRange")
(setf (get sensor_fusion::ObstacleRange :definition-)
      "string Class
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



(provide :sensor_fusion/ObstacleRange "95436a53898d7edf4410a79f8f877033")


