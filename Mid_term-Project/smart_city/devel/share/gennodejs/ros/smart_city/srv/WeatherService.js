// Auto-generated. Do not edit!

// (in-package smart_city.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class WeatherServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.city_name = null;
      this.latitude = null;
      this.longitude = null;
    }
    else {
      if (initObj.hasOwnProperty('city_name')) {
        this.city_name = initObj.city_name
      }
      else {
        this.city_name = '';
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeatherServiceRequest
    // Serialize message field [city_name]
    bufferOffset = _serializer.string(obj.city_name, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float32(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float32(obj.longitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeatherServiceRequest
    let len;
    let data = new WeatherServiceRequest(null);
    // Deserialize message field [city_name]
    data.city_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.city_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'smart_city/WeatherServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19957a6673e039244d7d5f5f51f269a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string city_name
    float32 latitude
    float32 longitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WeatherServiceRequest(null);
    if (msg.city_name !== undefined) {
      resolved.city_name = msg.city_name;
    }
    else {
      resolved.city_name = ''
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    return resolved;
    }
};

class WeatherServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.city_name = null;
      this.weather_status = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('city_name')) {
        this.city_name = initObj.city_name
      }
      else {
        this.city_name = '';
      }
      if (initObj.hasOwnProperty('weather_status')) {
        this.weather_status = initObj.weather_status
      }
      else {
        this.weather_status = '';
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeatherServiceResponse
    // Serialize message field [city_name]
    bufferOffset = _serializer.string(obj.city_name, buffer, bufferOffset);
    // Serialize message field [weather_status]
    bufferOffset = _serializer.string(obj.weather_status, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeatherServiceResponse
    let len;
    let data = new WeatherServiceResponse(null);
    // Deserialize message field [city_name]
    data.city_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [weather_status]
    data.weather_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.city_name);
    length += _getByteLength(object.weather_status);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'smart_city/WeatherServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8a808d2c751ef9193646ddc8af30499';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string city_name
    string weather_status
    float32 temperature
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WeatherServiceResponse(null);
    if (msg.city_name !== undefined) {
      resolved.city_name = msg.city_name;
    }
    else {
      resolved.city_name = ''
    }

    if (msg.weather_status !== undefined) {
      resolved.weather_status = msg.weather_status;
    }
    else {
      resolved.weather_status = ''
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: WeatherServiceRequest,
  Response: WeatherServiceResponse,
  md5sum() { return '57c15ce4967618c6fc5d7a002a240ad2'; },
  datatype() { return 'smart_city/WeatherService'; }
};
