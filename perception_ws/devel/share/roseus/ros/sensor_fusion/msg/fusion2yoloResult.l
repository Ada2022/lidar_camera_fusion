;; Auto-generated. Do not edit!


(when (boundp 'sensor_fusion::fusion2yoloResult)
  (if (not (find-package "SENSOR_FUSION"))
    (make-package "SENSOR_FUSION"))
  (shadow 'fusion2yoloResult (find-package "SENSOR_FUSION")))
(unless (find-package "SENSOR_FUSION::FUSION2YOLORESULT")
  (make-package "SENSOR_FUSION::FUSION2YOLORESULT"))

(in-package "ROS")
;;//! \htmlinclude fusion2yoloResult.msg.html


(defclass sensor_fusion::fusion2yoloResult
  :super ros::object
  :slots (_id _bounding_boxes ))

(defmethod sensor_fusion::fusion2yoloResult
  (:init
   (&key
    ((:id __id) 0)
    ((:bounding_boxes __bounding_boxes) (instance sensor_fusion::BoundingBoxes :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _bounding_boxes __bounding_boxes)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; sensor_fusion/BoundingBoxes _bounding_boxes
    (send _bounding_boxes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; sensor_fusion/BoundingBoxes _bounding_boxes
       (send _bounding_boxes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; sensor_fusion/BoundingBoxes _bounding_boxes
     (send _bounding_boxes :deserialize buf ptr-) (incf ptr- (send _bounding_boxes :serialization-length))
   ;;
   self)
  )

(setf (get sensor_fusion::fusion2yoloResult :md5sum-) "f28a5afc6bea5150fc58096d7a9b6801")
(setf (get sensor_fusion::fusion2yoloResult :datatype-) "sensor_fusion/fusion2yoloResult")
(setf (get sensor_fusion::fusion2yoloResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result definition
int16 id
sensor_fusion/BoundingBoxes bounding_boxes


================================================================================
MSG: sensor_fusion/BoundingBoxes
Header header
Header image_header
BoundingBox[] bounding_boxes

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_fusion/BoundingBox
float64 probability
int64 xmin
int64 ymin
int64 xmax
int64 ymax
int16 id
string Class

")



(provide :sensor_fusion/fusion2yoloResult "f28a5afc6bea5150fc58096d7a9b6801")

