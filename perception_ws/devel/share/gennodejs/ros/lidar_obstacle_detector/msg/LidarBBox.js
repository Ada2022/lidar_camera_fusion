// Auto-generated. Do not edit!

// (in-package lidar_obstacle_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LidarBBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_min = null;
      this.point_max = null;
    }
    else {
      if (initObj.hasOwnProperty('point_min')) {
        this.point_min = initObj.point_min
      }
      else {
        this.point_min = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('point_max')) {
        this.point_max = initObj.point_max
      }
      else {
        this.point_max = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarBBox
    // Serialize message field [point_min]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point_min, buffer, bufferOffset);
    // Serialize message field [point_max]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarBBox
    let len;
    let data = new LidarBBox(null);
    // Deserialize message field [point_min]
    data.point_min = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_max]
    data.point_max = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_obstacle_detector/LidarBBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32eb6a28d30b2cdd8029c55836d8a97e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point point_min
    geometry_msgs/Point point_max
    
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
    const resolved = new LidarBBox(null);
    if (msg.point_min !== undefined) {
      resolved.point_min = geometry_msgs.msg.Point.Resolve(msg.point_min)
    }
    else {
      resolved.point_min = new geometry_msgs.msg.Point()
    }

    if (msg.point_max !== undefined) {
      resolved.point_max = geometry_msgs.msg.Point.Resolve(msg.point_max)
    }
    else {
      resolved.point_max = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = LidarBBox;
