// Auto-generated. Do not edit!

// (in-package lidar_camera_calibration.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xCenter = null;
      this.yCenter = null;
      this.zCenter = null;
      this.width = null;
      this.length = null;
      this.height = null;
      this.Class = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('xCenter')) {
        this.xCenter = initObj.xCenter
      }
      else {
        this.xCenter = 0.0;
      }
      if (initObj.hasOwnProperty('yCenter')) {
        this.yCenter = initObj.yCenter
      }
      else {
        this.yCenter = 0.0;
      }
      if (initObj.hasOwnProperty('zCenter')) {
        this.zCenter = initObj.zCenter
      }
      else {
        this.zCenter = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('Class')) {
        this.Class = initObj.Class
      }
      else {
        this.Class = '';
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [xCenter]
    bufferOffset = _serializer.float64(obj.xCenter, buffer, bufferOffset);
    // Serialize message field [yCenter]
    bufferOffset = _serializer.float64(obj.yCenter, buffer, bufferOffset);
    // Serialize message field [zCenter]
    bufferOffset = _serializer.float64(obj.zCenter, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [Class]
    bufferOffset = _serializer.string(obj.Class, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [xCenter]
    data.xCenter = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yCenter]
    data.yCenter = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [zCenter]
    data.zCenter = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Class]
    data.Class = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Class.length;
    length += 24 * object.points.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_camera_calibration/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01f316d769c454a1ebf14de07611fe3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 xCenter
    float64 yCenter
    float64 zCenter
    float64 width
    float64 length
    float64 height
    string Class
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
    const resolved = new Obstacle(null);
    if (msg.xCenter !== undefined) {
      resolved.xCenter = msg.xCenter;
    }
    else {
      resolved.xCenter = 0.0
    }

    if (msg.yCenter !== undefined) {
      resolved.yCenter = msg.yCenter;
    }
    else {
      resolved.yCenter = 0.0
    }

    if (msg.zCenter !== undefined) {
      resolved.zCenter = msg.zCenter;
    }
    else {
      resolved.zCenter = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.Class !== undefined) {
      resolved.Class = msg.Class;
    }
    else {
      resolved.Class = ''
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = Obstacle;
