cd "/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/share/GPISpace/cmake/bin"                    
./aggregate_sum                                                               \
  --gspc-home="/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6"                                        \
  --nodefile="/home/juschei/Desktop/aggregate_sum/nodefile"                                                \
  --rif-strategy=ssh                                                          \
  --topology="worker:$1"                           \
  --N=4 \
  --log-host="localhost" \
  --log-port=7777
