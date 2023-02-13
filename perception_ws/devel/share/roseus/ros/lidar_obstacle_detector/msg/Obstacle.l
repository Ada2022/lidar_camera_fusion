;; Auto-generated. Do not edit!


(when (boundp 'lidar_obstacle_detector::Obstacle)
  (if (not (find-package "LIDAR_OBSTACLE_DETECTOR"))
    (make-package "LIDAR_OBSTACLE_DETECTOR"))
  (shadow 'Obstacle (find-package "LIDAR_OBSTACLE_DETECTOR")))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLE")
  (make-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html


(defclass lidar_obstacle_detector::Obstacle
  :super ros::object
  :slots (_Class _xCenter _yCenter _zCenter _width _length _height ))

(defmethod lidar_obstacle_detector::Obstacle
  (:init
   (&key
    ((:Class __Class) "")
    ((:xCenter __xCenter) 0.0)
    ((:yCenter __yCenter) 0.0)
    ((:zCenter __zCenter) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _Class (string __Class))
   (setq _xCenter (float __xCenter))
   (setq _yCenter (float __yCenter))
   (setq _zCenter (float __zCenter))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _height (float __height))
   self)
  (:Class
   (&optional __Class)
   (if __Class (setq _Class __Class)) _Class)
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
  (:serialization-length
   ()
   (+
    ;; string _Class
    4 (length _Class)
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
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Class
       (write-long (length _Class) s) (princ _Class s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;;
   self)
  )

(setf (get lidar_obstacle_detector::Obstacle :md5sum-) "02fa78c2104fdac90b9cb90ca8b76a9b")
(setf (get lidar_obstacle_detector::Obstacle :datatype-) "lidar_obstacle_detector/Obstacle")
(setf (get lidar_obstacle_detector::Obstacle :definition-)
      "string Class
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height


")



(provide :lidar_obstacle_detector/Obstacle "02fa78c2104fdac90b9cb90ca8b76a9b")


