; Auto-generated. Do not edit!


(cl:in-package smart_city-msg)


;//! \htmlinclude WeatherStatus.msg.html

(cl:defclass <WeatherStatus> (roslisp-msg-protocol:ros-message)
  ((condition
    :reader condition
    :initarg :condition
    :type cl:string
    :initform "")
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass WeatherStatus (<WeatherStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_city-msg:<WeatherStatus> is deprecated: use smart_city-msg:WeatherStatus instead.")))

(cl:ensure-generic-function 'condition-val :lambda-list '(m))
(cl:defmethod condition-val ((m <WeatherStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-msg:condition-val is deprecated.  Use smart_city-msg:condition instead.")
  (condition m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <WeatherStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-msg:temperature-val is deprecated.  Use smart_city-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherStatus>) ostream)
  "Serializes a message object of type '<WeatherStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'condition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'condition))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherStatus>) istream)
  "Deserializes a message object of type '<WeatherStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'condition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'condition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherStatus>)))
  "Returns string type for a message object of type '<WeatherStatus>"
  "smart_city/WeatherStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherStatus)))
  "Returns string type for a message object of type 'WeatherStatus"
  "smart_city/WeatherStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherStatus>)))
  "Returns md5sum for a message object of type '<WeatherStatus>"
  "bf6342d0402d73c156b8c72fd09b7f24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherStatus)))
  "Returns md5sum for a message object of type 'WeatherStatus"
  "bf6342d0402d73c156b8c72fd09b7f24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherStatus>)))
  "Returns full string definition for message of type '<WeatherStatus>"
  (cl:format cl:nil "string condition~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherStatus)))
  "Returns full string definition for message of type 'WeatherStatus"
  (cl:format cl:nil "string condition~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'condition))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherStatus
    (cl:cons ':condition (condition msg))
    (cl:cons ':temperature (temperature msg))
))
