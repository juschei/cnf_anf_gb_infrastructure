cmake_minimum_required (VERSION 3.15)
project (aggregate_sum
  LANGUAGES CXX
)

set(CMAKE_VERBOSE_MAKEFILE ON)

set (CMAKE_CXX_STANDARD 14)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

find_package (GPISpace REQUIRED
  COMPONENTS
    DO_NOT_CHECK_GIT_SUBMODULES
)
find_package (util-generic REQUIRED)
find_package (util-cmake REQUIRED)
find_package (Boost 1.61.0 REQUIRED
  COMPONENTS
     filesystem
     program_options
)
find_package(PythonLibs REQUIRED)
include_directories(${PYTHON_INCLUDE_DIRS})

include (util-cmake/add_macros)

# Python header handling

find_package (PythonLibs)
message(STATUS "PYTHON_LIBRARIES = ${PYTHON_LIBRARIES}")
message(STATUS "PYTHON_EXECUTABLE = ${PYTHON_EXECUTABLE}")
message(STATUS "PYTHON_INCLUDE_DIRS = ${PYTHON_INCLUDE_DIRS}")

add_definitions( -DPYTHON_EXECUTABLE="${PYTHON_EXECUTABLE}" )
add_definitions( -DPYTHON_LIBRARIES="${PYTHON_LIBRARIES}" )

include_directories(${PYTHON_INCLUDE_DIRS})


set (BUNDLE_ROOT "libexec/bundle")
bundle_GPISpace (DESTINATION "${BUNDLE_ROOT}/gpispace"
  COMPONENTS runtime
)

set (PETRI_NET "${PROJECT_SOURCE_DIR}/workflow/${PROJECT_NAME}.xpnet")
set (COMPILED_PETRI_NET "${PROJECT_BINARY_DIR}/${PROJECT_NAME}.pnet")
set (WRAPPER_DIRECTORY "${PROJECT_BINARY_DIR}/gen")
set (WRAPPER_LIBRARY "${WRAPPER_DIRECTORY}/pnetc/op/lib${PROJECT_NAME}.so")
set (DRIVER_BINARY "${PROJECT_NAME}")

add_custom_command (
  COMMAND
    GPISpace::pnetc
      --input="${PETRI_NET}"
      --output="${COMPILED_PETRI_NET}"
      --gen-cxxflags=-I"${PYTHON_INCLUDE_DIRS}"
      --gen-ldflags="-L${PYTHON_LIBRARIES}"

  OUTPUT "${COMPILED_PETRI_NET}"
  DEPENDS "${PETRI_NET}"
          "${PYTHON_LIBRARIES}"
)
add_custom_target (compiled_petri_net
  ALL
  DEPENDS
    "${COMPILED_PETRI_NET}"
    "${PYTHON_LIBRARIES}"
)

add_custom_command (
  COMMAND
    GPISpace::pnetc
      --gen-cxxflags="-O3"
      --input="${PETRI_NET}"
      --output="/dev/null"
      --gen-cxxflags=-I"${PYTHON_INCLUDE_DIRS}"
      --gen-ldflags="-L${PYTHON_LIBRARIES}"
      --gen-ldflags="-lpython3.8"
      --path-to-cpp="${WRAPPER_DIRECTORY}"
  COMMAND
    +make -C "${WRAPPER_DIRECTORY}"
  OUTPUT "${WRAPPER_LIBRARY}"
  DEPENDS "${PETRI_NET}"
          "${PYTHON_LIBRARIES}"
)
add_custom_target (workflow_library
  ALL
  DEPENDS
    "${WRAPPER_LIBRARY}"
    "${PYTHON_LIBRARIES}"
)



extended_add_executable (NAME "${DRIVER_BINARY}"
  DONT_APPEND_EXE_SUFFIX
  SOURCES
    src/parse_parameters_from_commandline.cpp
    src/execute.cpp
    src/main.cpp
    src/Workflow.cpp
    src/WorkflowResult.cpp
    src/ValuesOnPorts.cpp
  INCLUDE_DIRECTORIES PRIVATE include
  LIBRARIES PRIVATE Util::Generic
                    GPISpace::execution
                    Boost::headers
                    Boost::filesystem
                    Boost::program_options
                    ${PYTHON_LIBRARIES}
  INSTALL
  INSTALL_DESTINATION bin
)



bundle_GPISpace_add_rpath (TARGET "${DRIVER_BINARY}" INSTALL_DIRECTORY "bin")

install (FILES
  "${COMPILED_PETRI_NET}"
  DESTINATION pnet
)
install (FILES
  "${WRAPPER_LIBRARY}"
  DESTINATION lib
)

#target_link_libraries(aggregate_sum PUBLIC ${PYTHON_LIBRARIES})