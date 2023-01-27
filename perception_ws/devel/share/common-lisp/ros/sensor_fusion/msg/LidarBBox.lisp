; Auto-generated. Do not edit!


(cl:in-package sensor_fusion-msg)


;//! \htmlinclude LidarBBox.msg.html

(cl:defclass <LidarBBox> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (dimension
    :reader dimension
    :initarg :dimension
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass LidarBBox (<LidarBBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarBBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarBBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_fusion-msg:<LidarBBox> is deprecated: use sensor_fusion-msg:LidarBBox instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LidarBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_fusion-msg:position-val is deprecated.  Use sensor_fusion-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'dimension-val :lambda-list '(m))
(cl:defmethod dimension-val ((m <LidarBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_fusion-msg:dimension-val is deprecated.  Use sensor_fusion-msg:dimension instead.")
  (dimension m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarBBox>) ostream)
  "Serializes a message object of type '<LidarBBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimension) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarBBox>) istream)
  "Deserializes a message object of type '<LidarBBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimension) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarBBox>)))
  "Returns string type for a message object of type '<LidarBBox>"
  "sensor_fusion/LidarBBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarBBox)))
  "Returns string type for a message object of type 'LidarBBox"
  "sensor_fusion/LidarBBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarBBox>)))
  "Returns md5sum for a message object of type '<LidarBBox>"
  "5a7abdc1c089cd4f9701ead0a10c7460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarBBox)))
  "Returns md5sum for a message object of type 'LidarBBox"
  "5a7abdc1c089cd4f9701ead0a10c7460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarBBox>)))
  "Returns full string definition for message of type '<LidarBBox>"
  (cl:format cl:nil "geometry_msgs/Point position~%geometry_msgs/Point dimension~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarBBox)))
  "Returns full string definition for message of type 'LidarBBox"
  (cl:format cl:nil "geometry_msgs/Point position~%geometry_msgs/Point dimension~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarBBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimension))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarBBox>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarBBox
    (cl:cons ':position (position msg))
    (cl:cons ':dimension (dimension msg))
))
