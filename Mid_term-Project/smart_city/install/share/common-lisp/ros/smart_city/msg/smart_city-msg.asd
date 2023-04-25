
(cl:in-package :asdf)

(defsystem "smart_city-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GPSLocation" :depends-on ("_package_GPSLocation"))
    (:file "_package_GPSLocation" :depends-on ("_package"))
    (:file "VehicleInfo" :depends-on ("_package_VehicleInfo"))
    (:file "_package_VehicleInfo" :depends-on ("_package"))
    (:file "WeatherStatus" :depends-on ("_package_WeatherStatus"))
    (:file "_package_WeatherStatus" :depends-on ("_package"))
  ))