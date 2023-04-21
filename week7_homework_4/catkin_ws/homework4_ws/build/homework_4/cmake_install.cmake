# Install script for directory: /home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/src/homework_4

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_4/srv" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/src/homework_4/srv/OddEvenCheck.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_4/cmake" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/devel/include/homework_4")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/devel/share/roseus/ros/homework_4")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/devel/share/common-lisp/ros/homework_4")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/devel/share/gennodejs/ros/homework_4")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/devel/lib/python3/dist-packages/homework_4")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/devel/lib/python3/dist-packages/homework_4")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_4/cmake" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_4/cmake" TYPE FILE FILES
    "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4Config.cmake"
    "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_4" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/src/homework_4/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_4/cmake" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_4/cmake" TYPE FILE FILES
    "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4Config.cmake"
    "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/homework_4Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_4" TYPE FILE FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/src/homework_4/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/homework_4" TYPE PROGRAM FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/rpm_pub.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/homework_4" TYPE PROGRAM FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/speed_calc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/homework_4" TYPE PROGRAM FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/service_client.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/homework_4" TYPE PROGRAM FILES "/home/james77/Desktop/SMS-Lab/week7_homework_4/catkin_ws/homework4_ws/build/homework_4/catkin_generated/installspace/service_server.py")
endif()

