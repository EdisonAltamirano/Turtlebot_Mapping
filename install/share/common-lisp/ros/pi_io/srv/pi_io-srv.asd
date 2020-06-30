
(cl:in-package :asdf)

(defsystem "pi_io-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gpio_output" :depends-on ("_package_gpio_output"))
    (:file "_package_gpio_output" :depends-on ("_package"))
  ))