;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_arm_object_manipulation::UserCommandResult)
  (if (not (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION"))
    (make-package "TURTLEBOT_ARM_OBJECT_MANIPULATION"))
  (shadow 'UserCommandResult (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION")))
(unless (find-package "TURTLEBOT_ARM_OBJECT_MANIPULATION::USERCOMMANDRESULT")
  (make-package "TURTLEBOT_ARM_OBJECT_MANIPULATION::USERCOMMANDRESULT"))

(in-package "ROS")
;;//! \htmlinclude UserCommandResult.msg.html


(defclass turtlebot_arm_object_manipulation::UserCommandResult
  :super ros::object
  :slots (_outcome ))

(defmethod turtlebot_arm_object_manipulation::UserCommandResult
  (:init
   (&key
    ((:outcome __outcome) "")
    )
   (send-super :init)
   (setq _outcome (string __outcome))
   self)
  (:outcome
   (&optional __outcome)
   (if __outcome (setq _outcome __outcome)) _outcome)
  (:serialization-length
   ()
   (+
    ;; string _outcome
    4 (length _outcome)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _outcome
       (write-long (length _outcome) s) (princ _outcome s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _outcome
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _outcome (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get turtlebot_arm_object_manipulation::UserCommandResult :md5sum-) "2b95071cca675b3d5b80ad0bdaf20389")
(setf (get turtlebot_arm_object_manipulation::UserCommandResult :datatype-) "turtlebot_arm_object_manipulation/UserCommandResult")
(setf (get turtlebot_arm_object_manipulation::UserCommandResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result
string outcome

")



(provide :turtlebot_arm_object_manipulation/UserCommandResult "2b95071cca675b3d5b80ad0bdaf20389")


