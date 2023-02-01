rm -R build/gen
cmake                                                                         \
  -D GPISpace_ROOT="/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6"                                    \
  -D CMAKE_INSTALL_PREFIX="/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/share/GPISpace/cmake"                                     \
  -B "build/"                                                              \
  -S "/home/juschei/Desktop/aggregate_sum"

cmake                                                                   \
  --build "build/"                                                        \
  --target install                                                            \
  -j $(nproc)
