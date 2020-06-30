// Auto-generated. Do not edit!

// (in-package turtlebot_actions.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FindFiducialGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_name = null;
      this.pattern_width = null;
      this.pattern_height = null;
      this.pattern_size = null;
      this.pattern_type = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_name')) {
        this.camera_name = initObj.camera_name
      }
      else {
        this.camera_name = '';
      }
      if (initObj.hasOwnProperty('pattern_width')) {
        this.pattern_width = initObj.pattern_width
      }
      else {
        this.pattern_width = 0;
      }
      if (initObj.hasOwnProperty('pattern_height')) {
        this.pattern_height = initObj.pattern_height
      }
      else {
        this.pattern_height = 0;
      }
      if (initObj.hasOwnProperty('pattern_size')) {
        this.pattern_size = initObj.pattern_size
      }
      else {
        this.pattern_size = 0.0;
      }
      if (initObj.hasOwnProperty('pattern_type')) {
        this.pattern_type = initObj.pattern_type
      }
      else {
        this.pattern_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindFiducialGoal
    // Serialize message field [camera_name]
    bufferOffset = _serializer.string(obj.camera_name, buffer, bufferOffset);
    // Serialize message field [pattern_width]
    bufferOffset = _serializer.uint8(obj.pattern_width, buffer, bufferOffset);
    // Serialize message field [pattern_height]
    bufferOffset = _serializer.uint8(obj.pattern_height, buffer, bufferOffset);
    // Serialize message field [pattern_size]
    bufferOffset = _serializer.float32(obj.pattern_size, buffer, bufferOffset);
    // Serialize message field [pattern_type]
    bufferOffset = _serializer.uint8(obj.pattern_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindFiducialGoal
    let len;
    let data = new FindFiducialGoal(null);
    // Deserialize message field [camera_name]
    data.camera_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pattern_width]
    data.pattern_width = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pattern_height]
    data.pattern_height = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pattern_size]
    data.pattern_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pattern_type]
    data.pattern_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.camera_name.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlebot_actions/FindFiducialGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8906385fe785bb5733551eb61968fe5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    uint8   CHESSBOARD = 1
    uint8   CIRCLES_GRID = 2
    uint8   ASYMMETRIC_CIRCLES_GRID =3
    
    string    camera_name       # name of the camera 
    uint8     pattern_width     # number of objects across
    uint8     pattern_height    # number of objects down
    float32   pattern_size      # size the object pattern (square size or circle size)
    uint8     pattern_type      # type of pattern (CHESSBOARD, CIRCLES_GRID, ASYMMETRIC_CIRCLES_GRID)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FindFiducialGoal(null);
    if (msg.camera_name !== undefined) {
      resolved.camera_name = msg.camera_name;
    }
    else {
      resolved.camera_name = ''
    }

    if (msg.pattern_width !== undefined) {
      resolved.pattern_width = msg.pattern_width;
    }
    else {
      resolved.pattern_width = 0
    }

    if (msg.pattern_height !== undefined) {
      resolved.pattern_height = msg.pattern_height;
    }
    else {
      resolved.pattern_height = 0
    }

    if (msg.pattern_size !== undefined) {
      resolved.pattern_size = msg.pattern_size;
    }
    else {
      resolved.pattern_size = 0.0
    }

    if (msg.pattern_type !== undefined) {
      resolved.pattern_type = msg.pattern_type;
    }
    else {
      resolved.pattern_type = 0
    }

    return resolved;
    }
};

// Constants for message
FindFiducialGoal.Constants = {
  CHESSBOARD: 1,
  CIRCLES_GRID: 2,
  ASYMMETRIC_CIRCLES_GRID: 3,
}

module.exports = FindFiducialGoal;
