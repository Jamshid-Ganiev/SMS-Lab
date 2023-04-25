;; Auto-generated. Do not edit!


(when (boundp 'smart_city::WeatherStatus)
  (if (not (find-package "SMART_CITY"))
    (make-package "SMART_CITY"))
  (shadow 'WeatherStatus (find-package "SMART_CITY")))
(unless (find-package "SMART_CITY::WEATHERSTATUS")
  (make-package "SMART_CITY::WEATHERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude WeatherStatus.msg.html


(defclass smart_city::WeatherStatus
  :super ros::object
  :slots (_condition _temperature _temperature_in_celsius _weather_description ))

(defmethod smart_city::WeatherStatus
  (:init
   (&key
    ((:condition __condition) "")
    ((:temperature __temperature) 0.0)
    ((:temperature_in_celsius __temperature_in_celsius) 0.0)
    ((:weather_description __weather_description) "")
    )
   (send-super :init)
   (setq _condition (string __condition))
   (setq _temperature (float __temperature))
   (setq _temperature_in_celsius (float __temperature_in_celsius))
   (setq _weather_description (string __weather_description))
   self)
  (:condition
   (&optional __condition)
   (if __condition (setq _condition __condition)) _condition)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:temperature_in_celsius
   (&optional __temperature_in_celsius)
   (if __temperature_in_celsius (setq _temperature_in_celsius __temperature_in_celsius)) _temperature_in_celsius)
  (:weather_description
   (&optional __weather_description)
   (if __weather_description (setq _weather_description __weather_description)) _weather_description)
  (:serialization-length
   ()
   (+
    ;; string _condition
    4 (length _condition)
    ;; float64 _temperature
    8
    ;; float32 _temperature_in_celsius
    4
    ;; string _weather_description
    4 (length _weather_description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _condition
       (write-long (length _condition) s) (princ _condition s)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _temperature_in_celsius
       (sys::poke _temperature_in_celsius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _weather_description
       (write-long (length _weather_description) s) (princ _weather_description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _condition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _condition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _temperature_in_celsius
     (setq _temperature_in_celsius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _weather_description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _weather_description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get smart_city::WeatherStatus :md5sum-) "5057a82170bb6f01299019173b4603ab")
(setf (get smart_city::WeatherStatus :datatype-) "smart_city/WeatherStatus")
(setf (get smart_city::WeatherStatus :definition-)
      "string condition
float64 temperature

float32 temperature_in_celsius
string weather_description


")



(provide :smart_city/WeatherStatus "5057a82170bb6f01299019173b4603ab")


