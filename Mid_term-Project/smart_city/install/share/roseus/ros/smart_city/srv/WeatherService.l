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
  :slots (_city_name _latitude _longitude ))

(defmethod smart_city::WeatherServiceRequest
  (:init
   (&key
    ((:city_name __city_name) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    )
   (send-super :init)
   (setq _city_name (string __city_name))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   self)
  (:city_name
   (&optional __city_name)
   (if __city_name (setq _city_name __city_name)) _city_name)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:serialization-length
   ()
   (+
    ;; string _city_name
    4 (length _city_name)
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _city_name
       (write-long (length _city_name) s) (princ _city_name s)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _city_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _city_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass smart_city::WeatherServiceResponse
  :super ros::object
  :slots (_city_name _weather_status _temperature ))

(defmethod smart_city::WeatherServiceResponse
  (:init
   (&key
    ((:city_name __city_name) "")
    ((:weather_status __weather_status) "")
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _city_name (string __city_name))
   (setq _weather_status (string __weather_status))
   (setq _temperature (float __temperature))
   self)
  (:city_name
   (&optional __city_name)
   (if __city_name (setq _city_name __city_name)) _city_name)
  (:weather_status
   (&optional __weather_status)
   (if __weather_status (setq _weather_status __weather_status)) _weather_status)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; string _city_name
    4 (length _city_name)
    ;; string _weather_status
    4 (length _weather_status)
    ;; float32 _temperature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _city_name
       (write-long (length _city_name) s) (princ _city_name s)
     ;; string _weather_status
       (write-long (length _weather_status) s) (princ _weather_status s)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _city_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _city_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _weather_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _weather_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass smart_city::WeatherService
  :super ros::object
  :slots ())

(setf (get smart_city::WeatherService :md5sum-) "57c15ce4967618c6fc5d7a002a240ad2")
(setf (get smart_city::WeatherService :datatype-) "smart_city/WeatherService")
(setf (get smart_city::WeatherService :request) smart_city::WeatherServiceRequest)
(setf (get smart_city::WeatherService :response) smart_city::WeatherServiceResponse)

(defmethod smart_city::WeatherServiceRequest
  (:response () (instance smart_city::WeatherServiceResponse :init)))

(setf (get smart_city::WeatherServiceRequest :md5sum-) "57c15ce4967618c6fc5d7a002a240ad2")
(setf (get smart_city::WeatherServiceRequest :datatype-) "smart_city/WeatherServiceRequest")
(setf (get smart_city::WeatherServiceRequest :definition-)
      "string city_name
float32 latitude
float32 longitude
---
string city_name
string weather_status
float32 temperature

")

(setf (get smart_city::WeatherServiceResponse :md5sum-) "57c15ce4967618c6fc5d7a002a240ad2")
(setf (get smart_city::WeatherServiceResponse :datatype-) "smart_city/WeatherServiceResponse")
(setf (get smart_city::WeatherServiceResponse :definition-)
      "string city_name
float32 latitude
float32 longitude
---
string city_name
string weather_status
float32 temperature

")



(provide :smart_city/WeatherService "57c15ce4967618c6fc5d7a002a240ad2")


