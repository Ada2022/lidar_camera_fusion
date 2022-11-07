;; Auto-generated. Do not edit!


(when (boundp 'lidar_obstacle_detector::ObstacleInfoAction)
  (if (not (find-package "LIDAR_OBSTACLE_DETECTOR"))
    (make-package "LIDAR_OBSTACLE_DETECTOR"))
  (shadow 'ObstacleInfoAction (find-package "LIDAR_OBSTACLE_DETECTOR")))
(unless (find-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFOACTION")
  (make-package "LIDAR_OBSTACLE_DETECTOR::OBSTACLEINFOACTION"))

(in-package "ROS")
;;//! \htmlinclude ObstacleInfoAction.msg.html


(defclass lidar_obstacle_detector::ObstacleInfoAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod lidar_obstacle_detector::ObstacleInfoAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance lidar_obstacle_detector::ObstacleInfoActionGoal :init))
    ((:action_result __action_result) (instance lidar_obstacle_detector::ObstacleInfoActionResult :init))
    ((:action_feedback __action_feedback) (instance lidar_obstacle_detector::ObstacleInfoActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; lidar_obstacle_detector/ObstacleInfoActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; lidar_obstacle_detector/ObstacleInfoActionResult _action_result
    (send _action_result :serialization-length)
    ;; lidar_obstacle_detector/ObstacleInfoActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidar_obstacle_detector/ObstacleInfoActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; lidar_obstacle_detector/ObstacleInfoActionResult _action_result
       (send _action_result :serialize s)
     ;; lidar_obstacle_detector/ObstacleInfoActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidar_obstacle_detector/ObstacleInfoActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; lidar_obstacle_detector/ObstacleInfoActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; lidar_obstacle_detector/ObstacleInfoActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get lidar_obstacle_detector::ObstacleInfoAction :md5sum-) "23a4d0e7e81259a476ea5c73c0696c95")
(setf (get lidar_obstacle_detector::ObstacleInfoAction :datatype-) "lidar_obstacle_detector/ObstacleInfoAction")
(setf (get lidar_obstacle_detector::ObstacleInfoAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

ObstacleInfoActionGoal action_goal
ObstacleInfoActionResult action_result
ObstacleInfoActionFeedback action_feedback

================================================================================
MSG: lidar_obstacle_detector/ObstacleInfoActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
ObstacleInfoGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: lidar_obstacle_detector/ObstacleInfoGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Return objects location 

# Goal definition
lidar_obstacle_detector/ObstacleRanges obstacle_ranges


================================================================================
MSG: lidar_obstacle_detector/ObstacleRanges
ObstacleRange[] obstacle_ranges

================================================================================
MSG: lidar_obstacle_detector/ObstacleRange
string Class
float64 xmin
float64 ymin
float64 zmin
float64 xmax
float64 ymax
float64 zmax
geometry_msgs/Point[] points


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: lidar_obstacle_detector/ObstacleInfoActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
ObstacleInfoResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: lidar_obstacle_detector/ObstacleInfoResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result definition
lidar_obstacle_detector/Obstacles obstacles


================================================================================
MSG: lidar_obstacle_detector/Obstacles
Obstacle[] obstacles

================================================================================
MSG: lidar_obstacle_detector/Obstacle
string Class
float64 xCenter
float64 yCenter
float64 zCenter
float64 width
float64 length
float64 height


================================================================================
MSG: lidar_obstacle_detector/ObstacleInfoActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
ObstacleInfoFeedback feedback

================================================================================
MSG: lidar_obstacle_detector/ObstacleInfoFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback definition


")



(provide :lidar_obstacle_detector/ObstacleInfoAction "23a4d0e7e81259a476ea5c73c0696c95")

