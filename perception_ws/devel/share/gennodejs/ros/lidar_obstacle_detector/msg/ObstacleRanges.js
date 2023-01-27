// Auto-generated. Do not edit!

// (in-package lidar_obstacle_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleRange = require('./ObstacleRange.js');

//-----------------------------------------------------------

class ObstacleRanges {
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
        this.obstacle_ranges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleRanges
    // Serialize message field [obstacle_ranges]
    // Serialize the length for message field [obstacle_ranges]
    bufferOffset = _serializer.uint32(obj.obstacle_ranges.length, buffer, bufferOffset);
    obj.obstacle_ranges.forEach((val) => {
      bufferOffset = ObstacleRange.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleRanges
    let len;
    let data = new ObstacleRanges(null);
    // Deserialize message field [obstacle_ranges]
    // Deserialize array length for message field [obstacle_ranges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_ranges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_ranges[i] = ObstacleRange.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.obstacle_ranges.forEach((val) => {
      length += ObstacleRange.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_obstacle_detector/ObstacleRanges';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bad4fcf5a1b99d59695951fba091918c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ObstacleRanges(null);
    if (msg.obstacle_ranges !== undefined) {
      resolved.obstacle_ranges = new Array(msg.obstacle_ranges.length);
      for (let i = 0; i < resolved.obstacle_ranges.length; ++i) {
        resolved.obstacle_ranges[i] = ObstacleRange.Resolve(msg.obstacle_ranges[i]);
      }
    }
    else {
      resolved.obstacle_ranges = []
    }

    return resolved;
    }
};

module.exports = ObstacleRanges;
