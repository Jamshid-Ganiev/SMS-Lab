;; Auto-generated. Do not edit!


(when (boundp 'smart_city::WeatherService)
  (if (not (find-package "SMART_CITY"))
    (make-package "SMART_CITY"))
  (shadow 'WeatherService (find-package "SMART_CITY")))
(unless (find-package "SMART_CITY::WEATHERSERVICE")
  (make-package "SMART_CITY::WEATHERSERVICE"))
(unless (find-package "SMART_CITY::WEATHERSERVICEREQUEST")
  (make-package "SMART_CITY::WEATHERSERVICEREQUEST"))
(unless (find-package "SMART_CITY::WEATHERSERVICERESPONSE")
  (make-package "SMART_CITY::WEATHERSERVICERESPONSE"))

(in-package "ROS")





(defclass smart_city::WeatherServiceRequest
  :super ros::object
  :slots (_gps ))

(defmethod smart_city::WeatherServiceRequest
  (:init
   (&key
    ((:gps __gps) (instance smart_city::GPSLocation :init))
    )
   (send-super :init)
   (setq _gps __gps)
   self)
  (:gps
   (&rest __gps)
   (if (keywordp (car __gps))
       (send* _gps __gps)
     (progn
       (if __gps (setq _gps (car __gps)))
       _gps)))
  (:serialization-length
   ()
   (+
    ;; smart_city/GPSLocation _gps
    (send _gps :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; smart_city/GPSLocation _gps
       (send _gps :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; smart_city/GPSLocation _gps
     (send _gps :deserialize buf ptr-) (incf ptr- (send _gps :serialization-length))
   ;;
   self)
  )

(defclass smart_city::WeatherServiceResponse
  :super ros::object
  :slots (_weather ))

(defmethod smart_city::WeatherServiceResponse
  (:init
   (&key
    ((:weather __weather) (instance smart_city::WeatherStatus :init))
    )
   (send-super :init)
   (setq _weather __weather)
   self)
  (:weather
   (&rest __weather)
   (if (keywordp (car __weather))
       (send* _weather __weather)
     (progn
       (if __weather (setq _weather (car __weather)))
       _weather)))
  (:serialization-length
   ()
   (+
    ;; smart_city/WeatherStatus _weather
    (send _weather :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; smart_city/WeatherStatus _weather
       (send _weather :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; smart_city/WeatherStatus _weather
     (send _weather :deserialize buf ptr-) (incf ptr- (send _weather :serialization-length))
   ;;
   self)
  )

(defclass smart_city::WeatherService
  :super ros::object
  :slots ())

(setf (get smart_city::WeatherService :md5sum-) "ec5c854fe33b5ba3e765055cce88be4e")
(setf (get smart_city::WeatherService :datatype-) "smart_city/WeatherService")
(setf (get smart_city::WeatherService :request) smart_city::WeatherServiceRequest)
(setf (get smart_city::WeatherService :response) smart_city::WeatherServiceResponse)

(defmethod smart_city::WeatherServiceRequest
  (:response () (instance smart_city::WeatherServiceResponse :init)))

(setf (get smart_city::WeatherServiceRequest :md5sum-) "ec5c854fe33b5ba3e765055cce88be4e")
(setf (get smart_city::WeatherServiceRequest :datatype-) "smart_city/WeatherServiceRequest")
(setf (get smart_city::WeatherServiceRequest :definition-)
      "smart_city/GPSLocation gps

================================================================================
MSG: smart_city/GPSLocation
float64 latitude
float64 longitude
---
smart_city/WeatherStatus weather


================================================================================
MSG: smart_city/WeatherStatus
string condition
float64 temperature
")

(setf (get smart_city::WeatherServiceResponse :md5sum-) "ec5c854fe33b5ba3e765055cce88be4e")
(setf (get smart_city::WeatherServiceResponse :datatype-) "smart_city/WeatherServiceResponse")
(setf (get smart_city::WeatherServiceResponse :definition-)
      "smart_city/GPSLocation gps

================================================================================
MSG: smart_city/GPSLocation
float64 latitude
float64 longitude
---
smart_city/WeatherStatus weather


================================================================================
MSG: smart_city/WeatherStatus
string condition
float64 temperature
")



(provide :smart_city/WeatherService "ec5c854fe33b5ba3e765055cce88be4e")


