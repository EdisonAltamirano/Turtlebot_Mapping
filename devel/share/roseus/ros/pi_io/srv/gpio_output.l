;; Auto-generated. Do not edit!


(when (boundp 'pi_io::gpio_output)
  (if (not (find-package "PI_IO"))
    (make-package "PI_IO"))
  (shadow 'gpio_output (find-package "PI_IO")))
(unless (find-package "PI_IO::GPIO_OUTPUT")
  (make-package "PI_IO::GPIO_OUTPUT"))
(unless (find-package "PI_IO::GPIO_OUTPUTREQUEST")
  (make-package "PI_IO::GPIO_OUTPUTREQUEST"))
(unless (find-package "PI_IO::GPIO_OUTPUTRESPONSE")
  (make-package "PI_IO::GPIO_OUTPUTRESPONSE"))

(in-package "ROS")





(defclass pi_io::gpio_outputRequest
  :super ros::object
  :slots (_index _value ))

(defmethod pi_io::gpio_outputRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _value __value)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _index
    1
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _index
       (write-byte _index s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _index
     (setq _index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pi_io::gpio_outputResponse
  :super ros::object
  :slots (_success ))

(defmethod pi_io::gpio_outputResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pi_io::gpio_output
  :super ros::object
  :slots ())

(setf (get pi_io::gpio_output :md5sum-) "95c163469a76c20c97a2c4e570510777")
(setf (get pi_io::gpio_output :datatype-) "pi_io/gpio_output")
(setf (get pi_io::gpio_output :request) pi_io::gpio_outputRequest)
(setf (get pi_io::gpio_output :response) pi_io::gpio_outputResponse)

(defmethod pi_io::gpio_outputRequest
  (:response () (instance pi_io::gpio_outputResponse :init)))

(setf (get pi_io::gpio_outputRequest :md5sum-) "95c163469a76c20c97a2c4e570510777")
(setf (get pi_io::gpio_outputRequest :datatype-) "pi_io/gpio_outputRequest")
(setf (get pi_io::gpio_outputRequest :definition-)
      "uint8 index
bool value
---
bool success

")

(setf (get pi_io::gpio_outputResponse :md5sum-) "95c163469a76c20c97a2c4e570510777")
(setf (get pi_io::gpio_outputResponse :datatype-) "pi_io/gpio_outputResponse")
(setf (get pi_io::gpio_outputResponse :definition-)
      "uint8 index
bool value
---
bool success

")



(provide :pi_io/gpio_output "95c163469a76c20c97a2c4e570510777")


