; Auto-generated. Do not edit!


(cl:in-package smart_city-srv)


;//! \htmlinclude WeatherService-request.msg.html

(cl:defclass <WeatherService-request> (roslisp-msg-protocol:ros-message)
  ((gps
    :reader gps
    :initarg :gps
    :type smart_city-msg:GPSLocation
    :initform (cl:make-instance 'smart_city-msg:GPSLocation)))
)

(cl:defclass WeatherService-request (<WeatherService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_city-srv:<WeatherService-request> is deprecated: use smart_city-srv:WeatherService-request instead.")))

(cl:ensure-generic-function 'gps-val :lambda-list '(m))
(cl:defmethod gps-val ((m <WeatherService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-srv:gps-val is deprecated.  Use smart_city-srv:gps instead.")
  (gps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherService-request>) ostream)
  "Serializes a message object of type '<WeatherService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherService-request>) istream)
  "Deserializes a message object of type '<WeatherService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps) istream)
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
  "ec5c854fe33b5ba3e765055cce88be4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherService-request)))
  "Returns md5sum for a message object of type 'WeatherService-request"
  "ec5c854fe33b5ba3e765055cce88be4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherService-request>)))
  "Returns full string definition for message of type '<WeatherService-request>"
  (cl:format cl:nil "smart_city/GPSLocation gps~%~%================================================================================~%MSG: smart_city/GPSLocation~%float64 latitude~%float64 longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherService-request)))
  "Returns full string definition for message of type 'WeatherService-request"
  (cl:format cl:nil "smart_city/GPSLocation gps~%~%================================================================================~%MSG: smart_city/GPSLocation~%float64 latitude~%float64 longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherService-request
    (cl:cons ':gps (gps msg))
))
;//! \htmlinclude WeatherService-response.msg.html

(cl:defclass <WeatherService-response> (roslisp-msg-protocol:ros-message)
  ((weather
    :reader weather
    :initarg :weather
    :type smart_city-msg:WeatherStatus
    :initform (cl:make-instance 'smart_city-msg:WeatherStatus)))
)

(cl:defclass WeatherService-response (<WeatherService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_city-srv:<WeatherService-response> is deprecated: use smart_city-srv:WeatherService-response instead.")))

(cl:ensure-generic-function 'weather-val :lambda-list '(m))
(cl:defmethod weather-val ((m <WeatherService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_city-srv:weather-val is deprecated.  Use smart_city-srv:weather instead.")
  (weather m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherService-response>) ostream)
  "Serializes a message object of type '<WeatherService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'weather) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherService-response>) istream)
  "Deserializes a message object of type '<WeatherService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'weather) istream)
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
  "ec5c854fe33b5ba3e765055cce88be4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherService-response)))
  "Returns md5sum for a message object of type 'WeatherService-response"
  "ec5c854fe33b5ba3e765055cce88be4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherService-response>)))
  "Returns full string definition for message of type '<WeatherService-response>"
  (cl:format cl:nil "smart_city/WeatherStatus weather~%~%~%================================================================================~%MSG: smart_city/WeatherStatus~%string condition~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherService-response)))
  "Returns full string definition for message of type 'WeatherService-response"
  (cl:format cl:nil "smart_city/WeatherStatus weather~%~%~%================================================================================~%MSG: smart_city/WeatherStatus~%string condition~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'weather))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherService-response
    (cl:cons ':weather (weather msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WeatherService)))
  'WeatherService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WeatherService)))
  'WeatherService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherService)))
  "Returns string type for a service object of type '<WeatherService>"
  "smart_city/WeatherService")