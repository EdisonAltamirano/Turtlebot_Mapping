;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_arm_object_manipulation::MoveToTargetResult)
  (if (not (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION"))
    (make-package "TURTLEBOT_ARM_OBJECT_MANIPULATION"))
  (shadow 'MoveToTargetResult (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION")))
(unless (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION::MOVETOTARGETRESULT")
  (make-package "TURTLEBOT_ARM_OBJECT_MANIPULATION::MOVETOTARGETRESULT"))

(in-package "ROS")
;;//! \htmlinclude MoveToTargetResult.msg.html


(defclass turtlebot_arm_object_manipulation::MoveToTargetResult
  :super ros::object
  :slots ())

(defmethod turtlebot_arm_object_manipulation::MoveToTargetResult
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get turtlebot_arm_object_manipulation::MoveToTargetResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get turtlebot_arm_object_manipulation::MoveToTargetResult :datatype-) "turtlebot_arm_object_manipulation/MoveToTargetResult")
(setf (get turtlebot_arm_object_manipulation::MoveToTargetResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# result definition


")



(provide :turtlebot_arm_object_manipulation/MoveToTargetResult "d41d8cd98f00b204e9800998ecf8427e")

