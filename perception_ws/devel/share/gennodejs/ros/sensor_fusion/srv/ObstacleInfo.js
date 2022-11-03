// Auto-generated. Do not edit!

// (in-package sensor_fusion.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleRanges = require('../msg/ObstacleRanges.js');
let Obstacles = require('../msg/Obstacles.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ObstacleInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle_ranges = null;
      this.obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle_ranges')) {
        this.obstacle_ranges = initObj.obstacle_ranges
      }
      else {
        this.obstacle_ranges = new ObstacleRanges();
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = new Obstacles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleInfoRequest
    // Serialize message field [obstacle_ranges]
    bufferOffset = ObstacleRanges.serialize(obj.obstacle_ranges, buffer, bufferOffset);
    // Serialize message field [obstacles]
    bufferOffset = Obstacles.serialize(obj.obstacles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleInfoRequest
    let len;
    let data = new ObstacleInfoRequest(null);
    // Deserialize message field [obstacle_ranges]
    data.obstacle_ranges = ObstacleRanges.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacles]
    data.obstacles = Obstacles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObstacleRanges.getMessageSize(object.obstacle_ranges);
    length += Obstacles.getMessageSize(object.obstacles);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensor_fusion/ObstacleInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22227c072563c2b3c6b68511985576c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request messages
    sensor_fusion/ObstacleRanges obstacle_ranges
    
    #server message
    sensor_fusion/Obstacles obstacles
    
    
    ================================================================================
    MSG: sensor_fusion/ObstacleRanges
    ObstacleRange[] obstacle_ranges
    
    ================================================================================
    MSG: sensor_fusion/ObstacleRange
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
    MSG: sensor_fusion/Obstacles
    Obstacle[] obstacles
    
    ================================================================================
    MSG: sensor_fusion/Obstacle
    string Class
    float64 xCenter
    float64 yCenter
    float64 zCenter
    float64 width
    float64 length
    float64 height
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleInfoRequest(null);
    if (msg.obstacle_ranges !== undefined) {
      resolved.obstacle_ranges = ObstacleRanges.Resolve(msg.obstacle_ranges)
    }
    else {
      resolved.obstacle_ranges = new ObstacleRanges()
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = Obstacles.Resolve(msg.obstacles)
    }
    else {
      resolved.obstacles = new Obstacles()
    }

    return resolved;
    }
};

class ObstacleInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleInfoResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleInfoResponse
    let len;
    let data = new ObstacleInfoResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensor_fusion/ObstacleInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleInfoResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ObstacleInfoRequest,
  Response: ObstacleInfoResponse,
  md5sum() { return '22227c072563c2b3c6b68511985576c3'; },
  datatype() { return 'sensor_fusion/ObstacleInfo'; }
};
