; Auto-generated. Do not edit!


(cl:in-package smart_city-srv)


;//! \htmlinclude WeatherService-request.msg.html

(cl:defclass <WeatherService-request> (roslisp-msg-protocol:ros-message)
  ((city_name
    :reader city_name
    :initarg :city_name
    :type cl:string
    :initform "")
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass WeatherService-request (<WeatherService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_city-srv:<WeatherService-request> is deprecated: use smart_city-srv:WeatherService-request instead.")))

(cl:ensure-generic-function 'city_name-val :lambda-list '(m))
(cl:defmethod city_name-val ((m <WeatherService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-srv:city_name-val is deprecated.  Use smart_city-srv:city_name instead.")
  (city_name m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <WeatherService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-srv:latitude-val is deprecated.  Use smart_city-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <WeatherService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-srv:longitude-val is deprecated.  Use smart_city-srv:longitude instead.")
  (longitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherService-request>) ostream)
  "Serializes a message object of type '<WeatherService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'city_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'city_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherService-request>) istream)
  "Deserializes a message object of type '<WeatherService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'city_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'city_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherService-request>)))
  "Returns string type for a service object of type '<WeatherService-request>"
  "smart_city/WeatherServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherService-request)))
  "Returns string type for a service object of type 'WeatherService-request"
  "smart_city/WeatherServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherService-request>)))
  "Returns md5sum for a message object of type '<WeatherService-request>"
  "57c15ce4967618c6fc5d7a002a240ad2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherService-request)))
  "Returns md5sum for a message object of type 'WeatherService-request"
  "57c15ce4967618c6fc5d7a002a240ad2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherService-request>)))
  "Returns full string definition for message of type '<WeatherService-request>"
  (cl:format cl:nil "string city_name~%float32 latitude~%float32 longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherService-request)))
  "Returns full string definition for message of type 'WeatherService-request"
  (cl:format cl:nil "string city_name~%float32 latitude~%float32 longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'city_name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherService-request
    (cl:cons ':city_name (city_name msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
))
;//! \htmlinclude WeatherService-response.msg.html

(cl:defclass <WeatherService-response> (roslisp-msg-protocol:ros-message)
  ((city_name
    :reader city_name
    :initarg :city_name
    :type cl:string
    :initform "")
   (weather_status
    :reader weather_status
    :initarg :weather_status
    :type cl:string
    :initform "")
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass WeatherService-response (<WeatherService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_city-srv:<WeatherService-response> is deprecated: use smart_city-srv:WeatherService-response instead.")))

(cl:ensure-generic-function 'city_name-val :lambda-list '(m))
(cl:defmethod city_name-val ((m <WeatherService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-srv:city_name-val is deprecated.  Use smart_city-srv:city_name instead.")
  (city_name m))

(cl:ensure-generic-function 'weather_status-val :lambda-list '(m))
(cl:defmethod weather_status-val ((m <WeatherService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-srv:weather_status-val is deprecated.  Use smart_city-srv:weather_status instead.")
  (weather_status m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <WeatherService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-srv:temperature-val is deprecated.  Use smart_city-srv:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherService-response>) ostream)
  "Serializes a message object of type '<WeatherService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'city_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'city_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'weather_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'weather_status))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherService-response>) istream)
  "Deserializes a message object of type '<WeatherService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'city_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'city_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'weather_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'weather_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherService-response>)))
  "Returns string type for a service object of type '<WeatherService-response>"
  "smart_city/WeatherServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherService-response)))
  "Returns string type for a service object of type 'WeatherService-response"
  "smart_city/WeatherServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherService-response>)))
  "Returns md5sum for a message object of type '<WeatherService-response>"
  "57c15ce4967618c6fc5d7a002a240ad2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherService-response)))
  "Returns md5sum for a message object of type 'WeatherService-response"
  "57c15ce4967618c6fc5d7a002a240ad2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherService-response>)))
  "Returns full string definition for message of type '<WeatherService-response>"
  (cl:format cl:nil "string city_name~%string weather_status~%float32 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherService-response)))
  "Returns full string definition for message of type 'WeatherService-response"
  (cl:format cl:nil "string city_name~%string weather_status~%float32 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'city_name))
     4 (cl:length (cl:slot-value msg 'weather_status))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherService-response
    (cl:cons ':city_name (city_name msg))
    (cl:cons ':weather_status (weather_status msg))
    (cl:cons ':temperature (temperature msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WeatherService)))
  'WeatherService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WeatherService)))
  'WeatherService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherService)))
  "Returns string type for a service object of type '<WeatherService>"
  "smart_city/WeatherService")