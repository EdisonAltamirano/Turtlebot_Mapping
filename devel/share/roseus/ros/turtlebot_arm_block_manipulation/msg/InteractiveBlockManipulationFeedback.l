;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_arm_block_manipulation::InteractiveBlockManipulationFeedback)
  (if (not (find-package "TURTLEBOT_ARM_BLOCK_MANIPULATION"))
    (make-package "TURTLEBOT_ARM_BLOCK_MANIPULATION"))
  (shadow 'InteractiveBlockManipulationFeedback (find-package "TURTLEBOT_ARM_BLOCK_MANIPULATION")))
(unless (find-package "TURTLEBOT_ARM_BLOCK_MANIPULATION::INTERACTIVEBLOCKMANIPULATIONFEEDBACK")
  (make-package "TURTLEBOT_ARM_BLOCK_MANIPULATION::INTERACTIVEBLOCKMANIPULATIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude InteractiveBlockManipulationFeedback.msg.html


(defclass turtlebot_arm_block_manipulation::InteractiveBlockManipulationFeedback
  :super ros::object
  :slots ())

(defmethod turtlebot_arm_block_manipulation::InteractiveBlockManipulationFeedback
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

(setf (get turtlebot_arm_block_manipulation::InteractiveBlockManipulationFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get turtlebot_arm_block_manipulation::InteractiveBlockManipulationFeedback :datatype-) "turtlebot_arm_block_manipulation/InteractiveBlockManipulationFeedback")
(setf (get turtlebot_arm_block_manipulation::InteractiveBlockManipulationFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback


")



(provide :turtlebot_arm_block_manipulation/InteractiveBlockManipulationFeedback "d41d8cd98f00b204e9800998ecf8427e")


