// Auto-generated. Do not edit!

// (in-package lidar_obstacle_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Class = null;
      this.xCenter = null;
      this.yCenter = null;
      this.zCenter = null;
      this.width = null;
      this.length = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('Class')) {
        this.Class = initObj.Class
      }
      else {
        this.Class = '';
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [Class]
    bufferOffset = _serializer.string(obj.Class, buffer, bufferOffset);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [Class]
    data.Class = _deserializer.string(buffer, bufferOffset);
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
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Class.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_obstacle_detector/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02fa78c2104fdac90b9cb90ca8b76a9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Obstacle(null);
    if (msg.Class !== undefined) {
      resolved.Class = msg.Class;
    }
    else {
      resolved.Class = ''
    }

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

    return resolved;
    }
};

module.exports = Obstacle;
