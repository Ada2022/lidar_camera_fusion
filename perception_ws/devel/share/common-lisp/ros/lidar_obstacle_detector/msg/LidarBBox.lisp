; Auto-generated. Do not edit!


(cl:in-package lidar_obstacle_detector-msg)


;//! \htmlinclude LidarBBox.msg.html

(cl:defclass <LidarBBox> (roslisp-msg-protocol:ros-message)
  ((point_min
    :reader point_min
    :initarg :point_min
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (point_max
    :reader point_max
    :initarg :point_max
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass LidarBBox (<LidarBBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarBBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarBBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_obstacle_detector-msg:<LidarBBox> is deprecated: use lidar_obstacle_detector-msg:LidarBBox instead.")))

(cl:ensure-generic-function 'point_min-val :lambda-list '(m))
(cl:defmethod point_min-val ((m <LidarBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_obstacle_detector-msg:point_min-val is deprecated.  Use lidar_obstacle_detector-msg:point_min instead.")
  (point_min m))

(cl:ensure-generic-function 'point_max-val :lambda-list '(m))
(cl:defmethod point_max-val ((m <LidarBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_obstacle_detector-msg:point_max-val is deprecated.  Use lidar_obstacle_detector-msg:point_max instead.")
  (point_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarBBox>) ostream)
  "Serializes a message object of type '<LidarBBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarBBox>) istream)
  "Deserializes a message object of type '<LidarBBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarBBox>)))
  "Returns string type for a message object of type '<LidarBBox>"
  "lidar_obstacle_detector/LidarBBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarBBox)))
  "Returns string type for a message object of type 'LidarBBox"
  "lidar_obstacle_detector/LidarBBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarBBox>)))
  "Returns md5sum for a message object of type '<LidarBBox>"
  "32eb6a28d30b2cdd8029c55836d8a97e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarBBox)))
  "Returns md5sum for a message object of type 'LidarBBox"
  "32eb6a28d30b2cdd8029c55836d8a97e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarBBox>)))
  "Returns full string definition for message of type '<LidarBBox>"
  (cl:format cl:nil "geometry_msgs/Point point_min~%geometry_msgs/Point point_max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarBBox)))
  "Returns full string definition for message of type 'LidarBBox"
  (cl:format cl:nil "geometry_msgs/Point point_min~%geometry_msgs/Point point_max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarBBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarBBox>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarBBox
    (cl:cons ':point_min (point_min msg))
    (cl:cons ':point_max (point_max msg))
))
