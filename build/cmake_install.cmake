# Install script for directory: /home/juschei/Desktop/aggregate_sum

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/share/GPISpace/cmake")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/bin" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/bin/gspc-bootstrap-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/bin" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/bin/gspc-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/bin" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/bin/gspc-teardown-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/lib" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/lib/libGPISpace-APIGuard.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/lib" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/lib/libdrts-context.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/lib" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/lib/libgspc.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/lib" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/lib/libwe-dev.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/gspc" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/gspc/agent")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/gspc" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/gspc/drts-kernel")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/gspc" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/gspc/gspc-logging-demultiplexer.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/bin" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/bin/iml-bootstrap-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/bin" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/bin/iml-teardown-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/lib" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/lib/libIML-Client.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/iml" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/iml/iml-gpi-server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/iml" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/iml/iml-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/iml" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/iml/libIMLPrivate-Installation.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace" TYPE FILE FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/version")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/lib" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/lib/libIML-Client.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/iml" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/iml/iml-gpi-server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/iml" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/iml/iml-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/libexec/iml" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/iml/libIMLPrivate-Installation.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/bin" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/bin/iml-bootstrap-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/gpispace/bin" TYPE PROGRAM FILES "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/bin/iml-teardown-rifd")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aggregate_sum" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aggregate_sum")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aggregate_sum"
         RPATH "$ORIGIN/../libexec/bundle/lib:$ORIGIN/../libexec/bundle/gpispace/lib:$ORIGIN/../libexec/bundle/gpispace/libexec/iml")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/juschei/Desktop/aggregate_sum/build/aggregate_sum")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aggregate_sum" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aggregate_sum")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aggregate_sum"
         OLD_RPATH "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/libexec/iml:/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/external/boost/lib:/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/lib:"
         NEW_RPATH "$ORIGIN/../libexec/bundle/lib:$ORIGIN/../libexec/bundle/gpispace/lib:$ORIGIN/../libexec/bundle/gpispace/libexec/iml")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aggregate_sum")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/bundle/lib" TYPE DIRECTORY FILES "/home/juschei/Desktop/aggregate_sum/build/bundle-aggregate_sum/" USE_SOURCE_PERMISSIONS)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pnet" TYPE FILE FILES "/home/juschei/Desktop/aggregate_sum/build/aggregate_sum.pnet")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/juschei/Desktop/aggregate_sum/build/gen/pnetc/op/libaggregate_sum.so")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/juschei/Desktop/aggregate_sum/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
