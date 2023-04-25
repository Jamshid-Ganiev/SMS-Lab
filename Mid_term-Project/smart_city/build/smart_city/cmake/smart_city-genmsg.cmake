# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "smart_city: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ismart_city:/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(smart_city_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg" NAME_WE)
add_custom_target(_smart_city_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_city" "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg" ""
)

get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg" NAME_WE)
add_custom_target(_smart_city_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_city" "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg" ""
)

get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg" NAME_WE)
add_custom_target(_smart_city_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_city" "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg" ""
)

get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv" NAME_WE)
add_custom_target(_smart_city_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_city" "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_city
)
_generate_msg_cpp(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_city
)
_generate_msg_cpp(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_city
)

### Generating Services
_generate_srv_cpp(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_city
)

### Generating Module File
_generate_module_cpp(smart_city
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_city
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(smart_city_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(smart_city_generate_messages smart_city_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_cpp _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_cpp _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_cpp _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv" NAME_WE)
add_dependencies(smart_city_generate_messages_cpp _smart_city_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_city_gencpp)
add_dependencies(smart_city_gencpp smart_city_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_city_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_city
)
_generate_msg_eus(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_city
)
_generate_msg_eus(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_city
)

### Generating Services
_generate_srv_eus(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_city
)

### Generating Module File
_generate_module_eus(smart_city
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_city
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(smart_city_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(smart_city_generate_messages smart_city_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_eus _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_eus _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_eus _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv" NAME_WE)
add_dependencies(smart_city_generate_messages_eus _smart_city_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_city_geneus)
add_dependencies(smart_city_geneus smart_city_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_city_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_city
)
_generate_msg_lisp(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_city
)
_generate_msg_lisp(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_city
)

### Generating Services
_generate_srv_lisp(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_city
)

### Generating Module File
_generate_module_lisp(smart_city
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_city
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(smart_city_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(smart_city_generate_messages smart_city_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_lisp _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_lisp _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_lisp _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv" NAME_WE)
add_dependencies(smart_city_generate_messages_lisp _smart_city_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_city_genlisp)
add_dependencies(smart_city_genlisp smart_city_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_city_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_city
)
_generate_msg_nodejs(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_city
)
_generate_msg_nodejs(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_city
)

### Generating Services
_generate_srv_nodejs(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_city
)

### Generating Module File
_generate_module_nodejs(smart_city
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_city
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(smart_city_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(smart_city_generate_messages smart_city_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_nodejs _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_nodejs _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_nodejs _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv" NAME_WE)
add_dependencies(smart_city_generate_messages_nodejs _smart_city_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_city_gennodejs)
add_dependencies(smart_city_gennodejs smart_city_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_city_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_city
)
_generate_msg_py(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_city
)
_generate_msg_py(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_city
)

### Generating Services
_generate_srv_py(smart_city
  "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_city
)

### Generating Module File
_generate_module_py(smart_city
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_city
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(smart_city_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(smart_city_generate_messages smart_city_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_py _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_py _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(smart_city_generate_messages_py _smart_city_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv" NAME_WE)
add_dependencies(smart_city_generate_messages_py _smart_city_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_city_genpy)
add_dependencies(smart_city_genpy smart_city_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_city_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_city)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_city
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(smart_city_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_city)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_city
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(smart_city_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_city)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_city
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(smart_city_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_city)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_city
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(smart_city_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_city)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_city\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_city
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(smart_city_generate_messages_py std_msgs_generate_messages_py)
endif()
