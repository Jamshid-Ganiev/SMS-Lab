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
  :slots (_condition _temperature ))

(defmethod smart_city::WeatherStatus
  (:init
   (&key
    ((:condition __condition) "")
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _condition (string __condition))
   (setq _temperature (float __temperature))
   self)
  (:condition
   (&optional __condition)
   (if __condition (setq _condition __condition)) _condition)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; string _condition
    4 (length _condition)
    ;; float64 _temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _condition
       (write-long (length _condition) s) (princ _condition s)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _condition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _condition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get smart_city::WeatherStatus :md5sum-) "bf6342d0402d73c156b8c72fd09b7f24")
(setf (get smart_city::WeatherStatus :datatype-) "smart_city/WeatherStatus")
(setf (get smart_city::WeatherStatus :definition-)
      "string condition
float64 temperature

")



(provide :smart_city/WeatherStatus "bf6342d0402d73c156b8c72fd09b7f24")


