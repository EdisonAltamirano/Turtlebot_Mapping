// Auto-generated. Do not edit!

// (in-package turtlebot_arm_object_manipulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObjectDetectionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_names = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_names')) {
        this.obj_names = initObj.obj_names
      }
      else {
        this.obj_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectDetectionResult
    // Serialize message field [obj_names]
    bufferOffset = _arraySerializer.string(obj.obj_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectDetectionResult
    let len;
    let data = new ObjectDetectionResult(null);
    // Deserialize message field [obj_names]
    data.obj_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.obj_names.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlebot_arm_object_manipulation/ObjectDetectionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02736298050f9335208931f532635983';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    # result definition
    
    string[] obj_names
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectDetectionResult(null);
    if (msg.obj_names !== undefined) {
      resolved.obj_names = msg.obj_names;
    }
    else {
      resolved.obj_names = []
    }

    return resolved;
    }
};

module.exports = ObjectDetectionResult;
