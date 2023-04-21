
(cl:in-package :asdf)

(defsystem "smart_city-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :smart_city-msg
)
  :components ((:file "_package")
    (:file "WeatherService" :depends-on ("_package_WeatherService"))
    (:file "_package_WeatherService" :depends-on ("_package"))
  ))