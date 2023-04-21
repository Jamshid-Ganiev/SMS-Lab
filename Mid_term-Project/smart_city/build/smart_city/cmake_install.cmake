# Install script for directory: /home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/smart_city/msg" TYPE FILE FILES
    "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/GPSLocation.msg"
    "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/WeatherStatus.msg"
    "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/msg/VehicleInfo.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/smart_city/srv" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/srv/WeatherService.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/smart_city/cmake" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/build/smart_city/catkin_generated/installspace/smart_city-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/devel/include/smart_city")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/devel/share/roseus/ros/smart_city")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/devel/share/common-lisp/ros/smart_city")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/devel/share/gennodejs/ros/smart_city")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/devel/lib/python3/dist-packages/smart_city")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/devel/lib/python3/dist-packages/smart_city")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/build/smart_city/catkin_generated/installspace/smart_city.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/smart_city/cmake" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/build/smart_city/catkin_generated/installspace/smart_city-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/smart_city/cmake" TYPE FILE FILES
    "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/build/smart_city/catkin_generated/installspace/smart_cityConfig.cmake"
    "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/build/smart_city/catkin_generated/installspace/smart_cityConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/smart_city" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/Mid_term-Project/smart_city/src/smart_city/package.xml")
endif()

