; Auto-generated. Do not edit!


(cl:in-package lidar_obstacle_detector-msg)


;//! \htmlinclude fusion2lidarFeedback.msg.html

(cl:defclass <fusion2lidarFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass fusion2lidarFeedback (<fusion2lidarFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fusion2lidarFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fusion2lidarFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_obstacle_detector-msg:<fusion2lidarFeedback> is deprecated: use lidar_obstacle_detector-msg:fusion2lidarFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fusion2lidarFeedback>) ostream)
  "Serializes a message object of type '<fusion2lidarFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fusion2lidarFeedback>) istream)
  "Deserializes a message object of type '<fusion2lidarFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fusion2lidarFeedback>)))
  "Returns string type for a message object of type '<fusion2lidarFeedback>"
  "lidar_obstacle_detector/fusion2lidarFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fusion2lidarFeedback)))
  "Returns string type for a message object of type 'fusion2lidarFeedback"
  "lidar_obstacle_detector/fusion2lidarFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fusion2lidarFeedback>)))
  "Returns md5sum for a message object of type '<fusion2lidarFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fusion2lidarFeedback)))
  "Returns md5sum for a message object of type 'fusion2lidarFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fusion2lidarFeedback>)))
  "Returns full string definition for message of type '<fusion2lidarFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback definition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fusion2lidarFeedback)))
  "Returns full string definition for message of type 'fusion2lidarFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback definition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fusion2lidarFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fusion2lidarFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'fusion2lidarFeedback
))
