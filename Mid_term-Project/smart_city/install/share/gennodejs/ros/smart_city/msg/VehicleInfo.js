// Auto-generated. Do not edit!

// (in-package smart_city.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plate_number = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('plate_number')) {
        this.plate_number = initObj.plate_number
      }
      else {
        this.plate_number = '';
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleInfo
    // Serialize message field [plate_number]
    bufferOffset = _serializer.string(obj.plate_number, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleInfo
    let len;
    let data = new VehicleInfo(null);
    // Deserialize message field [plate_number]
    data.plate_number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.plate_number);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_city/VehicleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '150932e63a69537c3aca6070ad51a55f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string plate_number
    float64 speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleInfo(null);
    if (msg.plate_number !== undefined) {
      resolved.plate_number = msg.plate_number;
    }
    else {
      resolved.plate_number = ''
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleInfo;
