; Auto-generated. Do not edit!


(cl:in-package sensor_fusion-msg)


;//! \htmlinclude fusion2yoloActionResult.msg.html

(cl:defclass <fusion2yoloActionResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (result
    :reader result
    :initarg :result
    :type sensor_fusion-msg:fusion2yoloResult
    :initform (cl:make-instance 'sensor_fusion-msg:fusion2yoloResult)))
)

(cl:defclass fusion2yoloActionResult (<fusion2yoloActionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fusion2yoloActionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fusion2yoloActionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_fusion-msg:<fusion2yoloActionResult> is deprecated: use sensor_fusion-msg:fusion2yoloActionResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <fusion2yoloActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_fusion-msg:header-val is deprecated.  Use sensor_fusion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <fusion2yoloActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_fusion-msg:status-val is deprecated.  Use sensor_fusion-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <fusion2yoloActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_fusion-msg:result-val is deprecated.  Use sensor_fusion-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fusion2yoloActionResult>) ostream)
  "Serializes a message object of type '<fusion2yoloActionResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fusion2yoloActionResult>) istream)
  "Deserializes a message object of type '<fusion2yoloActionResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fusion2yoloActionResult>)))
  "Returns string type for a message object of type '<fusion2yoloActionResult>"
  "sensor_fusion/fusion2yoloActionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fusion2yoloActionResult)))
  "Returns string type for a message object of type 'fusion2yoloActionResult"
  "sensor_fusion/fusion2yoloActionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fusion2yoloActionResult>)))
  "Returns md5sum for a message object of type '<fusion2yoloActionResult>"
  "9d4748d9b1c58586d23b2336b3b8814c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fusion2yoloActionResult)))
  "Returns md5sum for a message object of type 'fusion2yoloActionResult"
  "9d4748d9b1c58586d23b2336b3b8814c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fusion2yoloActionResult>)))
  "Returns full string definition for message of type '<fusion2yoloActionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%fusion2yoloResult result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: sensor_fusion/fusion2yoloResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result definition~%int16 id~%sensor_fusion/BoundingBoxes bounding_boxes~%~%~%================================================================================~%MSG: sensor_fusion/BoundingBoxes~%Header header~%Header image_header~%BoundingBox[] bounding_boxes~%~%================================================================================~%MSG: sensor_fusion/BoundingBox~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%int16 id~%string Class~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fusion2yoloActionResult)))
  "Returns full string definition for message of type 'fusion2yoloActionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%fusion2yoloResult result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: sensor_fusion/fusion2yoloResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result definition~%int16 id~%sensor_fusion/BoundingBoxes bounding_boxes~%~%~%================================================================================~%MSG: sensor_fusion/BoundingBoxes~%Header header~%Header image_header~%BoundingBox[] bounding_boxes~%~%================================================================================~%MSG: sensor_fusion/BoundingBox~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%int16 id~%string Class~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fusion2yoloActionResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fusion2yoloActionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'fusion2yoloActionResult
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))
