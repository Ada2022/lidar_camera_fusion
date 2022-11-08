; Auto-generated. Do not edit!


(cl:in-package lidar_obstacle_detector-msg)


;//! \htmlinclude fusion2lidarAction.msg.html

(cl:defclass <fusion2lidarAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type lidar_obstacle_detector-msg:fusion2lidarActionGoal
    :initform (cl:make-instance 'lidar_obstacle_detector-msg:fusion2lidarActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type lidar_obstacle_detector-msg:fusion2lidarActionResult
    :initform (cl:make-instance 'lidar_obstacle_detector-msg:fusion2lidarActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type lidar_obstacle_detector-msg:fusion2lidarActionFeedback
    :initform (cl:make-instance 'lidar_obstacle_detector-msg:fusion2lidarActionFeedback)))
)

(cl:defclass fusion2lidarAction (<fusion2lidarAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fusion2lidarAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fusion2lidarAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_obstacle_detector-msg:<fusion2lidarAction> is deprecated: use lidar_obstacle_detector-msg:fusion2lidarAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <fusion2lidarAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_obstacle_detector-msg:action_goal-val is deprecated.  Use lidar_obstacle_detector-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <fusion2lidarAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_obstacle_detector-msg:action_result-val is deprecated.  Use lidar_obstacle_detector-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <fusion2lidarAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_obstacle_detector-msg:action_feedback-val is deprecated.  Use lidar_obstacle_detector-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fusion2lidarAction>) ostream)
  "Serializes a message object of type '<fusion2lidarAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fusion2lidarAction>) istream)
  "Deserializes a message object of type '<fusion2lidarAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fusion2lidarAction>)))
  "Returns string type for a message object of type '<fusion2lidarAction>"
  "lidar_obstacle_detector/fusion2lidarAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fusion2lidarAction)))
  "Returns string type for a message object of type 'fusion2lidarAction"
  "lidar_obstacle_detector/fusion2lidarAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fusion2lidarAction>)))
  "Returns md5sum for a message object of type '<fusion2lidarAction>"
  "23a4d0e7e81259a476ea5c73c0696c95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fusion2lidarAction)))
  "Returns md5sum for a message object of type 'fusion2lidarAction"
  "23a4d0e7e81259a476ea5c73c0696c95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fusion2lidarAction>)))
  "Returns full string definition for message of type '<fusion2lidarAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%fusion2lidarActionGoal action_goal~%fusion2lidarActionResult action_result~%fusion2lidarActionFeedback action_feedback~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%fusion2lidarGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Return objects location ~%~%# Goal definition~%lidar_obstacle_detector/ObstacleRanges obstacle_ranges~%~%~%================================================================================~%MSG: lidar_obstacle_detector/ObstacleRanges~%ObstacleRange[] obstacle_ranges~%~%================================================================================~%MSG: lidar_obstacle_detector/ObstacleRange~%string Class~%float64 xmin~%float64 ymin~%float64 zmin~%float64 xmax~%float64 ymax~%float64 zmax~%geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%fusion2lidarResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result definition~%lidar_obstacle_detector/Obstacles obstacles~%~%~%================================================================================~%MSG: lidar_obstacle_detector/Obstacles~%Obstacle[] obstacles~%~%================================================================================~%MSG: lidar_obstacle_detector/Obstacle~%string Class~%float64 xCenter~%float64 yCenter~%float64 zCenter~%float64 width~%float64 length~%float64 height~%~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%fusion2lidarFeedback feedback~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback definition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fusion2lidarAction)))
  "Returns full string definition for message of type 'fusion2lidarAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%fusion2lidarActionGoal action_goal~%fusion2lidarActionResult action_result~%fusion2lidarActionFeedback action_feedback~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%fusion2lidarGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Return objects location ~%~%# Goal definition~%lidar_obstacle_detector/ObstacleRanges obstacle_ranges~%~%~%================================================================================~%MSG: lidar_obstacle_detector/ObstacleRanges~%ObstacleRange[] obstacle_ranges~%~%================================================================================~%MSG: lidar_obstacle_detector/ObstacleRange~%string Class~%float64 xmin~%float64 ymin~%float64 zmin~%float64 xmax~%float64 ymax~%float64 zmax~%geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%fusion2lidarResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result definition~%lidar_obstacle_detector/Obstacles obstacles~%~%~%================================================================================~%MSG: lidar_obstacle_detector/Obstacles~%Obstacle[] obstacles~%~%================================================================================~%MSG: lidar_obstacle_detector/Obstacle~%string Class~%float64 xCenter~%float64 yCenter~%float64 zCenter~%float64 width~%float64 length~%float64 height~%~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%fusion2lidarFeedback feedback~%~%================================================================================~%MSG: lidar_obstacle_detector/fusion2lidarFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback definition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fusion2lidarAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fusion2lidarAction>))
  "Converts a ROS message object to a list"
  (cl:list 'fusion2lidarAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
