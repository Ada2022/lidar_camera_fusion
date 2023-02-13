; Auto-generated. Do not edit!


(cl:in-package sensor_fusion-msg)


;//! \htmlinclude ObstacleRanges.msg.html

(cl:defclass <ObstacleRanges> (roslisp-msg-protocol:ros-message)
  ((obstacle_ranges
    :reader obstacle_ranges
    :initarg :obstacle_ranges
    :type (cl:vector sensor_fusion-msg:ObstacleRange)
   :initform (cl:make-array 0 :element-type 'sensor_fusion-msg:ObstacleRange :initial-element (cl:make-instance 'sensor_fusion-msg:ObstacleRange))))
)

(cl:defclass ObstacleRanges (<ObstacleRanges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleRanges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleRanges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_fusion-msg:<ObstacleRanges> is deprecated: use sensor_fusion-msg:ObstacleRanges instead.")))

(cl:ensure-generic-function 'obstacle_ranges-val :lambda-list '(m))
(cl:defmethod obstacle_ranges-val ((m <ObstacleRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_fusion-msg:obstacle_ranges-val is deprecated.  Use sensor_fusion-msg:obstacle_ranges instead.")
  (obstacle_ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleRanges>) ostream)
  "Serializes a message object of type '<ObstacleRanges>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleRanges>) istream)
  "Deserializes a message object of type '<ObstacleRanges>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_fusion-msg:ObstacleRange))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleRanges>)))
  "Returns string type for a message object of type '<ObstacleRanges>"
  "sensor_fusion/ObstacleRanges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleRanges)))
  "Returns string type for a message object of type 'ObstacleRanges"
  "sensor_fusion/ObstacleRanges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleRanges>)))
  "Returns md5sum for a message object of type '<ObstacleRanges>"
  "bad4fcf5a1b99d59695951fba091918c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleRanges)))
  "Returns md5sum for a message object of type 'ObstacleRanges"
  "bad4fcf5a1b99d59695951fba091918c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleRanges>)))
  "Returns full string definition for message of type '<ObstacleRanges>"
  (cl:format cl:nil "ObstacleRange[] obstacle_ranges~%~%================================================================================~%MSG: sensor_fusion/ObstacleRange~%string Class~%float64 xmin~%float64 ymin~%float64 zmin~%float64 xmax~%float64 ymax~%float64 zmax~%geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleRanges)))
  "Returns full string definition for message of type 'ObstacleRanges"
  (cl:format cl:nil "ObstacleRange[] obstacle_ranges~%~%================================================================================~%MSG: sensor_fusion/ObstacleRange~%string Class~%float64 xmin~%float64 ymin~%float64 zmin~%float64 xmax~%float64 ymax~%float64 zmax~%geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleRanges>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleRanges>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleRanges
    (cl:cons ':obstacle_ranges (obstacle_ranges msg))
))
