# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pi_io: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ipi_io:/home/edison/turtle_ws1/src/pi_io/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pi_io_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg" NAME_WE)
add_custom_target(_pi_io_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pi_io" "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg" ""
)

get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv" NAME_WE)
add_custom_target(_pi_io_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pi_io" "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pi_io
  "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pi_io
)

### Generating Services
_generate_srv_cpp(pi_io
  "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pi_io
)

### Generating Module File
_generate_module_cpp(pi_io
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pi_io
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pi_io_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pi_io_generate_messages pi_io_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg" NAME_WE)
add_dependencies(pi_io_generate_messages_cpp _pi_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv" NAME_WE)
add_dependencies(pi_io_generate_messages_cpp _pi_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pi_io_gencpp)
add_dependencies(pi_io_gencpp pi_io_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pi_io_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pi_io
  "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pi_io
)

### Generating Services
_generate_srv_eus(pi_io
  "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pi_io
)

### Generating Module File
_generate_module_eus(pi_io
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pi_io
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pi_io_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pi_io_generate_messages pi_io_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg" NAME_WE)
add_dependencies(pi_io_generate_messages_eus _pi_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv" NAME_WE)
add_dependencies(pi_io_generate_messages_eus _pi_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pi_io_geneus)
add_dependencies(pi_io_geneus pi_io_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pi_io_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pi_io
  "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pi_io
)

### Generating Services
_generate_srv_lisp(pi_io
  "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pi_io
)

### Generating Module File
_generate_module_lisp(pi_io
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pi_io
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pi_io_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pi_io_generate_messages pi_io_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg" NAME_WE)
add_dependencies(pi_io_generate_messages_lisp _pi_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv" NAME_WE)
add_dependencies(pi_io_generate_messages_lisp _pi_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pi_io_genlisp)
add_dependencies(pi_io_genlisp pi_io_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pi_io_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pi_io
  "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pi_io
)

### Generating Services
_generate_srv_nodejs(pi_io
  "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pi_io
)

### Generating Module File
_generate_module_nodejs(pi_io
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pi_io
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pi_io_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pi_io_generate_messages pi_io_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg" NAME_WE)
add_dependencies(pi_io_generate_messages_nodejs _pi_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv" NAME_WE)
add_dependencies(pi_io_generate_messages_nodejs _pi_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pi_io_gennodejs)
add_dependencies(pi_io_gennodejs pi_io_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pi_io_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pi_io
  "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pi_io
)

### Generating Services
_generate_srv_py(pi_io
  "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pi_io
)

### Generating Module File
_generate_module_py(pi_io
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pi_io
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pi_io_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pi_io_generate_messages pi_io_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/msg/gpio_input.msg" NAME_WE)
add_dependencies(pi_io_generate_messages_py _pi_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edison/turtle_ws1/src/pi_io/srv/gpio_output.srv" NAME_WE)
add_dependencies(pi_io_generate_messages_py _pi_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pi_io_genpy)
add_dependencies(pi_io_genpy pi_io_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pi_io_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pi_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pi_io
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pi_io_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pi_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pi_io
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pi_io_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pi_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pi_io
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pi_io_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pi_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pi_io
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pi_io_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pi_io)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pi_io\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pi_io
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pi_io_generate_messages_py std_msgs_generate_messages_py)
endif()
