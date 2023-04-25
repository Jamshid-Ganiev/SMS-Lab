cmake_minimum_required(VERSION 3.0.2)
project(smart_city)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

find_package(cpprestsdk REQUIRED)
find_package(PkgConfig)
pkg_check_modules(JSONCPP jsoncpp)
find_package(CURL REQUIRED)

add_message_files(
  FILES
  GPSLocation.msg
  WeatherStatus.msg
  VehicleInfo.msg
)

add_service_files(
  FILES
  WeatherService.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES ${PROJECT_NAME}
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
  DEPENDS cpprestsdk
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  ${JSONCPP_INCLUDE_DIRS}
  ${CURL_INCLUDE_DIRS}
)

add_executable(weather_service_server src/weather_service_server.cpp)
target_link_libraries(weather_service_server ${catkin_LIBRARIES} ${CURL_LIBRARIES} ${JSONCPP_LIBRARIES} jsoncpp)
add_dependencies(weather_service_server ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(weather_service_client src/weather_service_client.cpp)
target_link_libraries(weather_service_client ${catkin_LIBRARIES} ${JSONCPP_LIBRARIES})
add_dependencies(weather_service_client ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(user_input src/user_input.cpp)
target_link_libraries(user_input ${catkin_LIBRARIES})
add_dependencies(user_input ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
