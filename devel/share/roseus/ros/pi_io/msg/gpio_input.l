;; Auto-generated. Do not edit!


(when (boundp 'pi_io::gpio_input)
  (if (not (find-package "PI_IO"))
    (make-package "PI_IO"))
  (shadow 'gpio_input (find-package "PI_IO")))
(unless (find-package "PI_IO::GPIO_INPUT")
  (make-package "PI_IO::GPIO_INPUT"))

(in-package "ROS")
;;//! \htmlinclude gpio_input.msg.html


(defclass pi_io::gpio_input
  :super ros::object
  :slots (_index _value ))

(defmethod pi_io::gpio_input
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

(setf (get pi_io::gpio_input :md5sum-) "b96eddd279766f8d4dd7aa09ca9fb9a8")
(setf (get pi_io::gpio_input :datatype-) "pi_io/gpio_input")
(setf (get pi_io::gpio_input :definition-)
      "uint8 index   # GPIO index starting at 0
bool value    # GPIO value

")



(provide :pi_io/gpio_input "b96eddd279766f8d4dd7aa09ca9fb9a8")


