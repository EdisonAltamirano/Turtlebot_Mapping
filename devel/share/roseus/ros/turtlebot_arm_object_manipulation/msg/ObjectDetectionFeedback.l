;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_arm_object_manipulation::ObjectDetectionFeedback)
  (if (not (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION"))
    (make-package "TURTLEBOT_ARM_OBJECT_MANIPULATION"))
  (shadow 'ObjectDetectionFeedback (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION")))
(unless (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION::OBJECTDETECTIONFEEDBACK")
  (make-package "TURTLEBOT_ARM_OBJECT_MANIPULATION::OBJECTDETECTIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ObjectDetectionFeedback.msg.html


(defclass turtlebot_arm_object_manipulation::ObjectDetectionFeedback
  :super ros::object
  :slots ())

(defmethod turtlebot_arm_object_manipulation::ObjectDetectionFeedback
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

(setf (get turtlebot_arm_object_manipulation::ObjectDetectionFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get turtlebot_arm_object_manipulation::ObjectDetectionFeedback :datatype-) "turtlebot_arm_object_manipulation/ObjectDetectionFeedback")
(setf (get turtlebot_arm_object_manipulation::ObjectDetectionFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# feedback


")



(provide :turtlebot_arm_object_manipulation/ObjectDetectionFeedback "d41d8cd98f00b204e9800998ecf8427e")


