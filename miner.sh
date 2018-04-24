#!/bin/bash
#
#

# -H 2 : only use GPU
#    1 : use GPU(scrypt) and CPU(SHA-256 multi-pro)
#    0 : ... single-pro)

OUT=result/litegm-$(date +%Y%m%d-%H%M%S).out

# max T
#./minerd --algo=scrypt -l T167x22 -C 2 -H 1 -o stratum+tcp://stratum.f2pool.com:8888 -O "echoin.001:echo_f2pool97;"
#--time-limit=60
#--time-limit=600

# 1.491 MH/s
#./minerd --algo=scrypt -t 44 -o stratum+tcp://stratum.f2pool.com:8888 -O "echoin.003:echo_f2pool97;" 
./minerd --benchmark

# 1.480 MH/s
#./minerd -l T56x12 -C 2 -H 1 -o stratum+tcp://stratum.f2pool.com:8888 -O "echoin.001:echo_f2pool97;" 

# get the -l config
#./minerd -D --benchmark

#minerd.exe --algo=keccak -d gtx780 -i 0 -m 1 -l T2304x24 -o stratum+tcp://maxpool.1gh.com:17333 -u WALLETADDRESS -p x

