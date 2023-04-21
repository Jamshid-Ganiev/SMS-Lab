// Auto-generated. Do not edit!

// (in-package smart_city.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GPSLocation = require('../msg/GPSLocation.js');

//-----------------------------------------------------------

let WeatherStatus = require('../msg/WeatherStatus.js');

//-----------------------------------------------------------

class WeatherServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gps = null;
    }
    else {
      if (initObj.hasOwnProperty('gps')) {
        this.gps = initObj.gps
      }
      else {
        this.gps = new GPSLocation();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeatherServiceRequest
    // Serialize message field [gps]
    bufferOffset = GPSLocation.serialize(obj.gps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeatherServiceRequest
    let len;
    let data = new WeatherServiceRequest(null);
    // Deserialize message field [gps]
    data.gps = GPSLocation.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'smart_city/WeatherServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ab89b0cff2505ac42fd099e2fe894eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    smart_city/GPSLocation gps
    
    ================================================================================
    MSG: smart_city/GPSLocation
    float64 latitude
    float64 longitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WeatherServiceRequest(null);
    if (msg.gps !== undefined) {
      resolved.gps = GPSLocation.Resolve(msg.gps)
    }
    else {
      resolved.gps = new GPSLocation()
    }

    return resolved;
    }
};

class WeatherServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.weather = null;
    }
    else {
      if (initObj.hasOwnProperty('weather')) {
        this.weather = initObj.weather
      }
      else {
        this.weather = new WeatherStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeatherServiceResponse
    // Serialize message field [weather]
    bufferOffset = WeatherStatus.serialize(obj.weather, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeatherServiceResponse
    let len;
    let data = new WeatherServiceResponse(null);
    // Deserialize message field [weather]
    data.weather = WeatherStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WeatherStatus.getMessageSize(object.weather);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'smart_city/WeatherServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '653be75df0546fc1019bb908c6fde669';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    smart_city/WeatherStatus weather
    
    
    ================================================================================
    MSG: smart_city/WeatherStatus
    string condition
    float64 temperature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WeatherServiceResponse(null);
    if (msg.weather !== undefined) {
      resolved.weather = WeatherStatus.Resolve(msg.weather)
    }
    else {
      resolved.weather = new WeatherStatus()
    }

    return resolved;
    }
};

module.exports = {
  Request: WeatherServiceRequest,
  Response: WeatherServiceResponse,
  md5sum() { return 'ec5c854fe33b5ba3e765055cce88be4e'; },
  datatype() { return 'smart_city/WeatherService'; }
};
