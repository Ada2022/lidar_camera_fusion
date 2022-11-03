; Auto-generated. Do not edit!


(cl:in-package sensor_fusion-srv)


;//! \htmlinclude ObstacleInfo-request.msg.html

(cl:defclass <ObstacleInfo-request> (roslisp-msg-protocol:ros-message)
  ((obstacle_ranges
    :reader obstacle_ranges
    :initarg :obstacle_ranges
    :type sensor_fusion-msg:ObstacleRanges
    :initform (cl:make-instance 'sensor_fusion-msg:ObstacleRanges))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type sensor_fusion-msg:Obstacles
    :initform (cl:make-instance 'sensor_fusion-msg:Obstacles)))
)

(cl:defclass ObstacleInfo-request (<ObstacleInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_fusion-srv:<ObstacleInfo-request> is deprecated: use sensor_fusion-srv:ObstacleInfo-request instead.")))

(cl:ensure-generic-function 'obstacle_ranges-val :lambda-list '(m))
(cl:defmethod obstacle_ranges-val ((m <ObstacleInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_fusion-srv:obstacle_ranges-val is deprecated.  Use sensor_fusion-srv:obstacle_ranges instead.")
  (obstacle_ranges m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <ObstacleInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_fusion-srv:obstacles-val is deprecated.  Use sensor_fusion-srv:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleInfo-request>) ostream)
  "Serializes a message object of type '<ObstacleInfo-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_ranges) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacles) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleInfo-request>) istream)
  "Deserializes a message object of type '<ObstacleInfo-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_ranges) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacles) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleInfo-request>)))
  "Returns string type for a service object of type '<ObstacleInfo-request>"
  "sensor_fusion/ObstacleInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleInfo-request)))
  "Returns string type for a service object of type 'ObstacleInfo-request"
  "sensor_fusion/ObstacleInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleInfo-request>)))
  "Returns md5sum for a message object of type '<ObstacleInfo-request>"
  "22227c072563c2b3c6b68511985576c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleInfo-request)))
  "Returns md5sum for a message object of type 'ObstacleInfo-request"
  "22227c072563c2b3c6b68511985576c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleInfo-request>)))
  "Returns full string definition for message of type '<ObstacleInfo-request>"
  (cl:format cl:nil "#request messages~%sensor_fusion/ObstacleRanges obstacle_ranges~%~%#server message~%sensor_fusion/Obstacles obstacles~%~%~%================================================================================~%MSG: sensor_fusion/ObstacleRanges~%ObstacleRange[] obstacle_ranges~%~%================================================================================~%MSG: sensor_fusion/ObstacleRange~%string Class~%float64 xmin~%float64 ymin~%float64 zmin~%float64 xmax~%float64 ymax~%float64 zmax~%geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_fusion/Obstacles~%Obstacle[] obstacles~%~%================================================================================~%MSG: sensor_fusion/Obstacle~%string Class~%float64 xCenter~%float64 yCenter~%float64 zCenter~%float64 width~%float64 length~%float64 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleInfo-request)))
  "Returns full string definition for message of type 'ObstacleInfo-request"
  (cl:format cl:nil "#request messages~%sensor_fusion/ObstacleRanges obstacle_ranges~%~%#server message~%sensor_fusion/Obstacles obstacles~%~%~%================================================================================~%MSG: sensor_fusion/ObstacleRanges~%ObstacleRange[] obstacle_ranges~%~%================================================================================~%MSG: sensor_fusion/ObstacleRange~%string Class~%float64 xmin~%float64 ymin~%float64 zmin~%float64 xmax~%float64 ymax~%float64 zmax~%geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_fusion/Obstacles~%Obstacle[] obstacles~%~%================================================================================~%MSG: sensor_fusion/Obstacle~%string Class~%float64 xCenter~%float64 yCenter~%float64 zCenter~%float64 width~%float64 length~%float64 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleInfo-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_ranges))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacles))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleInfo-request
    (cl:cons ':obstacle_ranges (obstacle_ranges msg))
    (cl:cons ':obstacles (obstacles msg))
))
;//! \htmlinclude ObstacleInfo-response.msg.html

(cl:defclass <ObstacleInfo-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ObstacleInfo-response (<ObstacleInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_fusion-srv:<ObstacleInfo-response> is deprecated: use sensor_fusion-srv:ObstacleInfo-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleInfo-response>) ostream)
  "Serializes a message object of type '<ObstacleInfo-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleInfo-response>) istream)
  "Deserializes a message object of type '<ObstacleInfo-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleInfo-response>)))
  "Returns string type for a service object of type '<ObstacleInfo-response>"
  "sensor_fusion/ObstacleInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleInfo-response)))
  "Returns string type for a service object of type 'ObstacleInfo-response"
  "sensor_fusion/ObstacleInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleInfo-response>)))
  "Returns md5sum for a message object of type '<ObstacleInfo-response>"
  "22227c072563c2b3c6b68511985576c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleInfo-response)))
  "Returns md5sum for a message object of type 'ObstacleInfo-response"
  "22227c072563c2b3c6b68511985576c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleInfo-response>)))
  "Returns full string definition for message of type '<ObstacleInfo-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleInfo-response)))
  "Returns full string definition for message of type 'ObstacleInfo-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleInfo-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleInfo-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ObstacleInfo)))
  'ObstacleInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ObstacleInfo)))
  'ObstacleInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleInfo)))
  "Returns string type for a service object of type '<ObstacleInfo>"
  "sensor_fusion/ObstacleInfo")