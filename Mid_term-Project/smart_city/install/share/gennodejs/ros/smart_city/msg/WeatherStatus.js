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

class WeatherStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.condition = null;
      this.temperature = null;
      this.temperature_in_celsius = null;
      this.weather_description = null;
    }
    else {
      if (initObj.hasOwnProperty('condition')) {
        this.condition = initObj.condition
      }
      else {
        this.condition = '';
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_in_celsius')) {
        this.temperature_in_celsius = initObj.temperature_in_celsius
      }
      else {
        this.temperature_in_celsius = 0.0;
      }
      if (initObj.hasOwnProperty('weather_description')) {
        this.weather_description = initObj.weather_description
      }
      else {
        this.weather_description = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeatherStatus
    // Serialize message field [condition]
    bufferOffset = _serializer.string(obj.condition, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    // Serialize message field [temperature_in_celsius]
    bufferOffset = _serializer.float32(obj.temperature_in_celsius, buffer, bufferOffset);
    // Serialize message field [weather_description]
    bufferOffset = _serializer.string(obj.weather_description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeatherStatus
    let len;
    let data = new WeatherStatus(null);
    // Deserialize message field [condition]
    data.condition = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature_in_celsius]
    data.temperature_in_celsius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [weather_description]
    data.weather_description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.condition);
    length += _getByteLength(object.weather_description);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_city/WeatherStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5057a82170bb6f01299019173b4603ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string condition
    float64 temperature
    
    float32 temperature_in_celsius
    string weather_description
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WeatherStatus(null);
    if (msg.condition !== undefined) {
      resolved.condition = msg.condition;
    }
    else {
      resolved.condition = ''
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.temperature_in_celsius !== undefined) {
      resolved.temperature_in_celsius = msg.temperature_in_celsius;
    }
    else {
      resolved.temperature_in_celsius = 0.0
    }

    if (msg.weather_description !== undefined) {
      resolved.weather_description = msg.weather_description;
    }
    else {
      resolved.weather_description = ''
    }

    return resolved;
    }
};

module.exports = WeatherStatus;
