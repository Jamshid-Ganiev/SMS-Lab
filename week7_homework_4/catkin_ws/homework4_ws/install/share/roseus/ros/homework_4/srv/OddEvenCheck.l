;; Auto-generated. Do not edit!


(when (boundp 'homework_4::OddEvenCheck)
  (if (not (find-package "HOMEWORK_4"))
    (make-package "HOMEWORK_4"))
  (shadow 'OddEvenCheck (find-package "HOMEWORK_4")))
(unless (find-package "HOMEWORK_4::ODDEVENCHECK")
  (make-package "HOMEWORK_4::ODDEVENCHECK"))
(unless (find-package "HOMEWORK_4::ODDEVENCHECKREQUEST")
  (make-package "HOMEWORK_4::ODDEVENCHECKREQUEST"))
(unless (find-package "HOMEWORK_4::ODDEVENCHECKRESPONSE")
  (make-package "HOMEWORK_4::ODDEVENCHECKRESPONSE"))

(in-package "ROS")





(defclass homework_4::OddEvenCheckRequest
  :super ros::object
  :slots (_number ))

(defmethod homework_4::OddEvenCheckRequest
  (:init
   (&key
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass homework_4::OddEvenCheckResponse
  :super ros::object
  :slots (_answer ))

(defmethod homework_4::OddEvenCheckResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass homework_4::OddEvenCheck
  :super ros::object
  :slots ())

(setf (get homework_4::OddEvenCheck :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get homework_4::OddEvenCheck :datatype-) "homework_4/OddEvenCheck")
(setf (get homework_4::OddEvenCheck :request) homework_4::OddEvenCheckRequest)
(setf (get homework_4::OddEvenCheck :response) homework_4::OddEvenCheckResponse)

(defmethod homework_4::OddEvenCheckRequest
  (:response () (instance homework_4::OddEvenCheckResponse :init)))

(setf (get homework_4::OddEvenCheckRequest :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get homework_4::OddEvenCheckRequest :datatype-) "homework_4/OddEvenCheckRequest")
(setf (get homework_4::OddEvenCheckRequest :definition-)
      "int32 number
---
string answer

")

(setf (get homework_4::OddEvenCheckResponse :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get homework_4::OddEvenCheckResponse :datatype-) "homework_4/OddEvenCheckResponse")
(setf (get homework_4::OddEvenCheckResponse :definition-)
      "int32 number
---
string answer

")



(provide :homework_4/OddEvenCheck "4ff0b0ab1ed04611e3a2b4090af9ee4f")


