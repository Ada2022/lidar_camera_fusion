;; Auto-generated. Do not edit!


(when (boundp 'lidar_camera_calibration::Obstacle)
  (if (not (find-package "LIDAR_CAMERA_CALIBRATION"))
    (make-package "LIDAR_CAMERA_CALIBRATION"))
  (shadow 'Obstacle (find-package "LIDAR_CAMERA_CALIBRATION")))
(unless (find-package "LIDAR_CAMERA_CALIBRATION::OBSTACLE")
  (make-package "LIDAR_CAMERA_CALIBRATION::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lidar_camera_calibration::Obstacle
  :super ros::object
  :slots (_xCenter _yCenter _zCenter _width _length _height _Class _points ))

(defmethod lidar_camera_calibration::Obstacle
  (:init
   (&key
    ((:xCenter __xCenter) 0.0)
    ((:yCenter __yCenter) 0.0)
    ((:zCenter __zCenter) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:height __height) 0.0)
    ((:Class __Class) "")
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _xCenter (float __xCenter))
   (setq _yCenter (float __yCenter))
   (setq _zCenter (float __zCenter))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _height (float __height))
   (setq _Class (string __Class))
   (setq _points __points)
   self)
  (:xCenter
   (&optional __xCenter)
   (if __xCenter (setq _xCenter __xCenter)) _xCenter)
  (:yCenter
   (&optional __yCenter)
   (if __yCenter (setq _yCenter __yCenter)) _yCenter)
  (:zCenter
   (&optional __zCenter)
   (if __zCenter (setq _zCenter __zCenter)) _zCenter)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:Class
   (&optional __Class)
   (if __Class (setq _Class __Class)) _Class)
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
    ;; float64 _xCenter
    8
    ;; float64 _yCenter
    8
    ;; float64 _zCenter
    8
    ;; float64 _width
    8
    ;; float64 _length
    8
    ;; float64 _height
    8
    ;; string _Class
    4 (length _Class)
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _xCenter
       (sys::poke _xCenter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yCenter
       (sys::poke _yCenter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _zCenter
       (sys::poke _zCenter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _Class
       (write-long (length _Class) s) (princ _Class s)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _xCenter
     (setq _xCenter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yCenter
     (setq _yCenter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _zCenter
     (setq _zCenter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _Class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get lidar_camera_calibration::Obstacle :md5sum-) "01f316d769c454a1ebf14de07611fe3f")
(setf (get lidar_camera_calibration::Obstacle :datatype-) "lidar_camera_calibration/Obstacle")
(setf (get lidar_camera_calibration::Obstacle :definition-)
      "float64 xCenter
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



(provide :lidar_camera_calibration/Obstacle "01f316d769c454a1ebf14de07611fe3f")


