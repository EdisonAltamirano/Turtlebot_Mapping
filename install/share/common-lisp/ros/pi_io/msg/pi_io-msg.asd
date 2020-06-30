
(cl:in-package :asdf)

(defsystem "pi_io-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gpio_input" :depends-on ("_package_gpio_input"))
    (:file "_package_gpio_input" :depends-on ("_package"))
  ))