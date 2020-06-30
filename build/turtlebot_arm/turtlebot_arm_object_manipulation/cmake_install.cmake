# Install script for directory: /home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/edison/turtle_ws1/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/action" TYPE FILE FILES
    "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/action/InteractiveManip.action"
    "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/action/ObjectDetection.action"
    "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/action/PickAndPlace.action"
    "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/action/MoveToTarget.action"
    "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/action/UserCommand.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/msg" TYPE FILE FILES
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/InteractiveManipAction.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/InteractiveManipActionGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/InteractiveManipActionResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/InteractiveManipActionFeedback.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/InteractiveManipGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/InteractiveManipResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/InteractiveManipFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/msg" TYPE FILE FILES
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/ObjectDetectionAction.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/ObjectDetectionActionGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/ObjectDetectionActionResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/ObjectDetectionActionFeedback.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/ObjectDetectionGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/ObjectDetectionResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/ObjectDetectionFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/msg" TYPE FILE FILES
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/PickAndPlaceAction.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/PickAndPlaceActionGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/PickAndPlaceActionResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/PickAndPlaceActionFeedback.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/PickAndPlaceGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/PickAndPlaceResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/PickAndPlaceFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/msg" TYPE FILE FILES
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/MoveToTargetAction.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/MoveToTargetActionGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/MoveToTargetActionResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/MoveToTargetActionFeedback.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/MoveToTargetGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/MoveToTargetResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/MoveToTargetFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/msg" TYPE FILE FILES
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/UserCommandAction.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/UserCommandActionGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/UserCommandActionResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/UserCommandActionFeedback.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/UserCommandGoal.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/UserCommandResult.msg"
    "/home/edison/turtle_ws1/devel/share/turtlebot_arm_object_manipulation/msg/UserCommandFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/cmake" TYPE FILE FILES "/home/edison/turtle_ws1/build/turtlebot_arm/turtlebot_arm_object_manipulation/catkin_generated/installspace/turtlebot_arm_object_manipulation-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/devel/include/turtlebot_arm_object_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/devel/share/roseus/ros/turtlebot_arm_object_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/devel/share/common-lisp/ros/turtlebot_arm_object_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/devel/share/gennodejs/ros/turtlebot_arm_object_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/edison/turtle_ws1/devel/lib/python2.7/dist-packages/turtlebot_arm_object_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/devel/lib/python2.7/dist-packages/turtlebot_arm_object_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/edison/turtle_ws1/build/turtlebot_arm/turtlebot_arm_object_manipulation/catkin_generated/installspace/turtlebot_arm_object_manipulation.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/cmake" TYPE FILE FILES "/home/edison/turtle_ws1/build/turtlebot_arm/turtlebot_arm_object_manipulation/catkin_generated/installspace/turtlebot_arm_object_manipulation-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation/cmake" TYPE FILE FILES
    "/home/edison/turtle_ws1/build/turtlebot_arm/turtlebot_arm_object_manipulation/catkin_generated/installspace/turtlebot_arm_object_manipulationConfig.cmake"
    "/home/edison/turtle_ws1/build/turtlebot_arm/turtlebot_arm_object_manipulation/catkin_generated/installspace/turtlebot_arm_object_manipulationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation" TYPE FILE FILES "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_detection_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_detection_action_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_detection_action_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation" TYPE EXECUTABLE FILES "/home/edison/turtle_ws1/devel/lib/turtlebot_arm_object_manipulation/object_detection_action_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_detection_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_detection_action_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_detection_action_server"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_detection_action_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_interactive_manip_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_interactive_manip_action_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_interactive_manip_action_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation" TYPE EXECUTABLE FILES "/home/edison/turtle_ws1/devel/lib/turtlebot_arm_object_manipulation/object_interactive_manip_action_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_interactive_manip_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_interactive_manip_action_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_interactive_manip_action_server"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_interactive_manip_action_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_pick_and_place_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_pick_and_place_action_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_pick_and_place_action_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation" TYPE EXECUTABLE FILES "/home/edison/turtle_ws1/devel/lib/turtlebot_arm_object_manipulation/object_pick_and_place_action_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_pick_and_place_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_pick_and_place_action_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_pick_and_place_action_server"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation/object_pick_and_place_action_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_arm_object_manipulation" TYPE PROGRAM FILES "/home/edison/turtle_ws1/build/turtlebot_arm/turtlebot_arm_object_manipulation/catkin_generated/installspace/keyboard_user_commands.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/config")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/demo")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_arm_object_manipulation" TYPE DIRECTORY FILES "/home/edison/turtle_ws1/src/turtlebot_arm/turtlebot_arm_object_manipulation/meshes")
endif()

