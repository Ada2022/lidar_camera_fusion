// Auto-generated. Do not edit!

// (in-package lidar_obstacle_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleRanges = require('./ObstacleRanges.js');

//-----------------------------------------------------------

class fusion2lidarGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle_ranges = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle_ranges')) {
        this.obstacle_ranges = initObj.obstacle_ranges
      }
      else {
        this.obstacle_ranges = new ObstacleRanges();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fusion2lidarGoal
    // Serialize message field [obstacle_ranges]
    bufferOffset = ObstacleRanges.serialize(obj.obstacle_ranges, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fusion2lidarGoal
    let len;
    let data = new fusion2lidarGoal(null);
    // Deserialize message field [obstacle_ranges]
    data.obstacle_ranges = ObstacleRanges.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObstacleRanges.getMessageSize(object.obstacle_ranges);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_obstacle_detector/fusion2lidarGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd257e600b199f8f28a59b9f7e1b3dec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fusion2lidarGoal(null);
    if (msg.obstacle_ranges !== undefined) {
      resolved.obstacle_ranges = ObstacleRanges.Resolve(msg.obstacle_ranges)
    }
    else {
      resolved.obstacle_ranges = new ObstacleRanges()
    }

    return resolved;
    }
};

module.exports = fusion2lidarGoal;