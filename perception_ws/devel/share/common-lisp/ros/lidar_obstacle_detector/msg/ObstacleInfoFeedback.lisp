; Auto-generated. Do not edit!


(cl:in-package lidar_obstacle_detector-msg)


;//! \htmlinclude ObstacleInfoFeedback.msg.html

(cl:defclass <ObstacleInfoFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ObstacleInfoFeedback (<ObstacleInfoFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleInfoFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleInfoFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_obstacle_detector-msg:<ObstacleInfoFeedback> is deprecated: use lidar_obstacle_detector-msg:ObstacleInfoFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleInfoFeedback>) ostream)
  "Serializes a message object of type '<ObstacleInfoFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleInfoFeedback>) istream)
  "Deserializes a message object of type '<ObstacleInfoFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleInfoFeedback>)))
  "Returns string type for a message object of type '<ObstacleInfoFeedback>"
  "lidar_obstacle_detector/ObstacleInfoFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleInfoFeedback)))
  "Returns string type for a message object of type 'ObstacleInfoFeedback"
  "lidar_obstacle_detector/ObstacleInfoFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleInfoFeedback>)))
  "Returns md5sum for a message object of type '<ObstacleInfoFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleInfoFeedback)))
  "Returns md5sum for a message object of type 'ObstacleInfoFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleInfoFeedback>)))
  "Returns full string definition for message of type '<ObstacleInfoFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback definition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleInfoFeedback)))
  "Returns full string definition for message of type 'ObstacleInfoFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback definition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleInfoFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleInfoFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleInfoFeedback
))
