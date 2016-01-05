#!/bin/bash -x
#
#PJM --rsc-list "node=12"
#PJM --rsc-list "elapse=00:10:00"
#PJM --stg-transfiles all
#PJM --stgin "./bin/ping-pong ./bin/ping-pong"
#PJM -s
#

. /work/system/Env_base
mpiexec -n 12 ./bin/ping-pong
