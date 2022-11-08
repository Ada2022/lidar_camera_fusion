; Auto-generated. Do not edit!


(cl:in-package lidar_obstacle_detector-msg)


;//! \htmlinclude fusion2lidarGoal.msg.html

(cl:defclass <fusion2lidarGoal> (roslisp-msg-protocol:ros-message)
  ((obstacle_ranges
    :reader obstacle_ranges
    :initarg :obstacle_ranges
    :type lidar_obstacle_detector-msg:ObstacleRanges
    :initform (cl:make-instance 'lidar_obstacle_detector-msg:ObstacleRanges)))
)

(cl:defclass fusion2lidarGoal (<fusion2lidarGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fusion2lidarGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fusion2lidarGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_obstacle_detector-msg:<fusion2lidarGoal> is deprecated: use lidar_obstacle_detector-msg:fusion2lidarGoal instead.")))

(cl:ensure-generic-function 'obstacle_ranges-val :lambda-list '(m))
(cl:defmethod obstacle_ranges-val ((m <fusion2lidarGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_obstacle_detector-msg:obstacle_ranges-val is deprecated.  Use lidar_obstacle_detector-msg:obstacle_ranges instead.")
  (obstacle_ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fusion2lidarGoal>) ostream)
  "Serializes a message object of type '<fusion2lidarGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_ranges) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fusion2lidarGoal>) istream)
  "Deserializes a message object of type '<fusion2lidarGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_ranges) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fusion2lidarGoal>)))
  "Returns string type for a message object of type '<fusion2lidarGoal>"
  "lidar_obstacle_detector/fusion2lidarGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fusion2lidarGoal)))
  "Returns string type for a message object of type 'fusion2lidarGoal"
  "lidar_obstacle_detector/fusion2lidarGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fusion2lidarGoal>)))
  "Returns md5sum for a message object of type '<fusion2lidarGoal>"
  "bd257e600b199f8f28a59b9f7e1b3dec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fusion2lidarGoal)))
  "Returns md5sum for a message object of type 'fusion2lidarGoal"
  "bd257e600b199f8f28a59b9f7e1b3dec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fusion2lidarGoal>)))
  "Returns full string definition for message of type '<fusion2lidarGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Return objects location ~%~%# Goal definition~%lidar_obstacle_detector/ObstacleRanges obstacle_ranges~%~%~%================================================================================~%MSG: lidar_obstacle_detector/ObstacleRanges~%ObstacleRange[] obstacle_ranges~%~%================================================================================~%MSG: lidar_obstacle_detector/ObstacleRange~%string Class~%float64 xmin~%float64 ymin~%float64 zmin~%float64 xmax~%float64 ymax~%float64 zmax~%geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fusion2lidarGoal)))
  "Returns full string definition for message of type 'fusion2lidarGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Return objects location ~%~%# Goal definition~%lidar_obstacle_detector/ObstacleRanges obstacle_ranges~%~%~%================================================================================~%MSG: lidar_obstacle_detector/ObstacleRanges~%ObstacleRange[] obstacle_ranges~%~%================================================================================~%MSG: lidar_obstacle_detector/ObstacleRange~%string Class~%float64 xmin~%float64 ymin~%float64 zmin~%float64 xmax~%float64 ymax~%float64 zmax~%geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fusion2lidarGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_ranges))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fusion2lidarGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'fusion2lidarGoal
    (cl:cons ':obstacle_ranges (obstacle_ranges msg))
))