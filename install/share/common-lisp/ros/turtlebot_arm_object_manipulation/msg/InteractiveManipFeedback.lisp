; Auto-generated. Do not edit!


(cl:in-package turtlebot_arm_object_manipulation-msg)


;//! \htmlinclude InteractiveManipFeedback.msg.html

(cl:defclass <InteractiveManipFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass InteractiveManipFeedback (<InteractiveManipFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteractiveManipFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteractiveManipFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot_arm_object_manipulation-msg:<InteractiveManipFeedback> is deprecated: use turtlebot_arm_object_manipulation-msg:InteractiveManipFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteractiveManipFeedback>) ostream)
  "Serializes a message object of type '<InteractiveManipFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteractiveManipFeedback>) istream)
  "Deserializes a message object of type '<InteractiveManipFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteractiveManipFeedback>)))
  "Returns string type for a message object of type '<InteractiveManipFeedback>"
  "turtlebot_arm_object_manipulation/InteractiveManipFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteractiveManipFeedback)))
  "Returns string type for a message object of type 'InteractiveManipFeedback"
  "turtlebot_arm_object_manipulation/InteractiveManipFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteractiveManipFeedback>)))
  "Returns md5sum for a message object of type '<InteractiveManipFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteractiveManipFeedback)))
  "Returns md5sum for a message object of type 'InteractiveManipFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteractiveManipFeedback>)))
  "Returns full string definition for message of type '<InteractiveManipFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteractiveManipFeedback)))
  "Returns full string definition for message of type 'InteractiveManipFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteractiveManipFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteractiveManipFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'InteractiveManipFeedback
))
