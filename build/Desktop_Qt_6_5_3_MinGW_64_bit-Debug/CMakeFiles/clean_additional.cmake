# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appdali_gui_qml_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appdali_gui_qml_autogen.dir\\ParseCache.txt"
  "appdali_gui_qml_autogen"
  )
endif()
