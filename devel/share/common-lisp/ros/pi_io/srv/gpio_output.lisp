; Auto-generated. Do not edit!


(cl:in-package pi_io-srv)


;//! \htmlinclude gpio_output-request.msg.html

(cl:defclass <gpio_output-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass gpio_output-request (<gpio_output-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpio_output-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpio_output-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pi_io-srv:<gpio_output-request> is deprecated: use pi_io-srv:gpio_output-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <gpio_output-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pi_io-srv:index-val is deprecated.  Use pi_io-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <gpio_output-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pi_io-srv:value-val is deprecated.  Use pi_io-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpio_output-request>) ostream)
  "Serializes a message object of type '<gpio_output-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpio_output-request>) istream)
  "Deserializes a message object of type '<gpio_output-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpio_output-request>)))
  "Returns string type for a service object of type '<gpio_output-request>"
  "pi_io/gpio_outputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpio_output-request)))
  "Returns string type for a service object of type 'gpio_output-request"
  "pi_io/gpio_outputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpio_output-request>)))
  "Returns md5sum for a message object of type '<gpio_output-request>"
  "95c163469a76c20c97a2c4e570510777")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpio_output-request)))
  "Returns md5sum for a message object of type 'gpio_output-request"
  "95c163469a76c20c97a2c4e570510777")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpio_output-request>)))
  "Returns full string definition for message of type '<gpio_output-request>"
  (cl:format cl:nil "uint8 index~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpio_output-request)))
  "Returns full string definition for message of type 'gpio_output-request"
  (cl:format cl:nil "uint8 index~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpio_output-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpio_output-request>))
  "Converts a ROS message object to a list"
  (cl:list 'gpio_output-request
    (cl:cons ':index (index msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude gpio_output-response.msg.html

(cl:defclass <gpio_output-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass gpio_output-response (<gpio_output-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpio_output-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpio_output-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pi_io-srv:<gpio_output-response> is deprecated: use pi_io-srv:gpio_output-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <gpio_output-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pi_io-srv:success-val is deprecated.  Use pi_io-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpio_output-response>) ostream)
  "Serializes a message object of type '<gpio_output-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpio_output-response>) istream)
  "Deserializes a message object of type '<gpio_output-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpio_output-response>)))
  "Returns string type for a service object of type '<gpio_output-response>"
  "pi_io/gpio_outputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpio_output-response)))
  "Returns string type for a service object of type 'gpio_output-response"
  "pi_io/gpio_outputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpio_output-response>)))
  "Returns md5sum for a message object of type '<gpio_output-response>"
  "95c163469a76c20c97a2c4e570510777")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpio_output-response)))
  "Returns md5sum for a message object of type 'gpio_output-response"
  "95c163469a76c20c97a2c4e570510777")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpio_output-response>)))
  "Returns full string definition for message of type '<gpio_output-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpio_output-response)))
  "Returns full string definition for message of type 'gpio_output-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpio_output-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpio_output-response>))
  "Converts a ROS message object to a list"
  (cl:list 'gpio_output-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'gpio_output)))
  'gpio_output-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'gpio_output)))
  'gpio_output-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpio_output)))
  "Returns string type for a service object of type '<gpio_output>"
  "pi_io/gpio_output")