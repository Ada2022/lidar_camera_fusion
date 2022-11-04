// Auto-generated. Do not edit!

// (in-package lidar_obstacle_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleInfoActionGoal = require('./ObstacleInfoActionGoal.js');
let ObstacleInfoActionResult = require('./ObstacleInfoActionResult.js');
let ObstacleInfoActionFeedback = require('./ObstacleInfoActionFeedback.js');

//-----------------------------------------------------------

class ObstacleInfoAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new ObstacleInfoActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new ObstacleInfoActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new ObstacleInfoActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleInfoAction
    // Serialize message field [action_goal]
    bufferOffset = ObstacleInfoActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = ObstacleInfoActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = ObstacleInfoActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleInfoAction
    let len;
    let data = new ObstacleInfoAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = ObstacleInfoActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = ObstacleInfoActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = ObstacleInfoActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObstacleInfoActionGoal.getMessageSize(object.action_goal);
    length += ObstacleInfoActionResult.getMessageSize(object.action_result);
    length += ObstacleInfoActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_obstacle_detector/ObstacleInfoAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23a4d0e7e81259a476ea5c73c0696c95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleInfoAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = ObstacleInfoActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new ObstacleInfoActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = ObstacleInfoActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new ObstacleInfoActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = ObstacleInfoActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new ObstacleInfoActionFeedback()
    }

    return resolved;
    }
};

module.exports = ObstacleInfoAction;
