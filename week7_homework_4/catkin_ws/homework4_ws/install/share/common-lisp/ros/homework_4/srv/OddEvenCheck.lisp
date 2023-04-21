; Auto-generated. Do not edit!


(cl:in-package homework_4-srv)


;//! \htmlinclude OddEvenCheck-request.msg.html

(cl:defclass <OddEvenCheck-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0))
)

(cl:defclass OddEvenCheck-request (<OddEvenCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OddEvenCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OddEvenCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name homework_4-srv:<OddEvenCheck-request> is deprecated: use homework_4-srv:OddEvenCheck-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <OddEvenCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader homework_4-srv:number-val is deprecated.  Use homework_4-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OddEvenCheck-request>) ostream)
  "Serializes a message object of type '<OddEvenCheck-request>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OddEvenCheck-request>) istream)
  "Deserializes a message object of type '<OddEvenCheck-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OddEvenCheck-request>)))
  "Returns string type for a service object of type '<OddEvenCheck-request>"
  "homework_4/OddEvenCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OddEvenCheck-request)))
  "Returns string type for a service object of type 'OddEvenCheck-request"
  "homework_4/OddEvenCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OddEvenCheck-request>)))
  "Returns md5sum for a message object of type '<OddEvenCheck-request>"
  "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OddEvenCheck-request)))
  "Returns md5sum for a message object of type 'OddEvenCheck-request"
  "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OddEvenCheck-request>)))
  "Returns full string definition for message of type '<OddEvenCheck-request>"
  (cl:format cl:nil "int32 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OddEvenCheck-request)))
  "Returns full string definition for message of type 'OddEvenCheck-request"
  (cl:format cl:nil "int32 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OddEvenCheck-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OddEvenCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OddEvenCheck-request
    (cl:cons ':number (number msg))
))
;//! \htmlinclude OddEvenCheck-response.msg.html

(cl:defclass <OddEvenCheck-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform ""))
)

(cl:defclass OddEvenCheck-response (<OddEvenCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OddEvenCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OddEvenCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name homework_4-srv:<OddEvenCheck-response> is deprecated: use homework_4-srv:OddEvenCheck-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <OddEvenCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader homework_4-srv:answer-val is deprecated.  Use homework_4-srv:answer instead.")
  (answer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OddEvenCheck-response>) ostream)
  "Serializes a message object of type '<OddEvenCheck-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OddEvenCheck-response>) istream)
  "Deserializes a message object of type '<OddEvenCheck-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OddEvenCheck-response>)))
  "Returns string type for a service object of type '<OddEvenCheck-response>"
  "homework_4/OddEvenCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OddEvenCheck-response)))
  "Returns string type for a service object of type 'OddEvenCheck-response"
  "homework_4/OddEvenCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OddEvenCheck-response>)))
  "Returns md5sum for a message object of type '<OddEvenCheck-response>"
  "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OddEvenCheck-response)))
  "Returns md5sum for a message object of type 'OddEvenCheck-response"
  "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OddEvenCheck-response>)))
  "Returns full string definition for message of type '<OddEvenCheck-response>"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OddEvenCheck-response)))
  "Returns full string definition for message of type 'OddEvenCheck-response"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OddEvenCheck-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OddEvenCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OddEvenCheck-response
    (cl:cons ':answer (answer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OddEvenCheck)))
  'OddEvenCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OddEvenCheck)))
  'OddEvenCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OddEvenCheck)))
  "Returns string type for a service object of type '<OddEvenCheck>"
  "homework_4/OddEvenCheck")