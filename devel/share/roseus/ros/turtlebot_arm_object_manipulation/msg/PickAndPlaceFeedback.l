;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_arm_object_manipulation::PickAndPlaceFeedback)
  (if (not (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION"))
    (make-package "TURTLEBOT_ARM_OBJECT_MANIPULATION"))
  (shadow 'PickAndPlaceFeedback (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION")))
(unless (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION::PICKANDPLACEFEEDBACK")
  (make-package "TURTLEBOT_ARM_OBJECT_MANIPULATION::PICKANDPLACEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude PickAndPlaceFeedback.msg.html


(defclass turtlebot_arm_object_manipulation::PickAndPlaceFeedback
  :super ros::object
  :slots ())

(defmethod turtlebot_arm_object_manipulation::PickAndPlaceFeedback
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

(setf (get turtlebot_arm_object_manipulation::PickAndPlaceFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get turtlebot_arm_object_manipulation::PickAndPlaceFeedback :datatype-) "turtlebot_arm_object_manipulation/PickAndPlaceFeedback")
(setf (get turtlebot_arm_object_manipulation::PickAndPlaceFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# feedback


")



(provide :turtlebot_arm_object_manipulation/PickAndPlaceFeedback "d41d8cd98f00b204e9800998ecf8427e")


