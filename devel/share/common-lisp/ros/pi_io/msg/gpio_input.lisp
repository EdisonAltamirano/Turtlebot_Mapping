; Auto-generated. Do not edit!


(cl:in-package pi_io-msg)


;//! \htmlinclude gpio_input.msg.html

(cl:defclass <gpio_input> (roslisp-msg-protocol:ros-message)
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

(cl:defclass gpio_input (<gpio_input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpio_input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpio_input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pi_io-msg:<gpio_input> is deprecated: use pi_io-msg:gpio_input instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <gpio_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pi_io-msg:index-val is deprecated.  Use pi_io-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <gpio_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pi_io-msg:value-val is deprecated.  Use pi_io-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpio_input>) ostream)
  "Serializes a message object of type '<gpio_input>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpio_input>) istream)
  "Deserializes a message object of type '<gpio_input>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpio_input>)))
  "Returns string type for a message object of type '<gpio_input>"
  "pi_io/gpio_input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpio_input)))
  "Returns string type for a message object of type 'gpio_input"
  "pi_io/gpio_input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpio_input>)))
  "Returns md5sum for a message object of type '<gpio_input>"
  "b96eddd279766f8d4dd7aa09ca9fb9a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpio_input)))
  "Returns md5sum for a message object of type 'gpio_input"
  "b96eddd279766f8d4dd7aa09ca9fb9a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpio_input>)))
  "Returns full string definition for message of type '<gpio_input>"
  (cl:format cl:nil "uint8 index   # GPIO index starting at 0~%bool value    # GPIO value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpio_input)))
  "Returns full string definition for message of type 'gpio_input"
  (cl:format cl:nil "uint8 index   # GPIO index starting at 0~%bool value    # GPIO value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpio_input>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpio_input>))
  "Converts a ROS message object to a list"
  (cl:list 'gpio_input
    (cl:cons ':index (index msg))
    (cl:cons ':value (value msg))
))
