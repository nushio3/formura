
#!/bin/bash -x
#PJM --rsc-list "node=4096"
#PJM --rsc-list "elapse=0:30:00"
#PJM --rsc-list "rscgrp=large"
#PJM -S
#PJM --mpi "use-rankdir"
#PJM --stg-transfiles all
#PJM --stgin "rank=* /home/ra000008/a03080/project/fdps/sandbox/iwasawa_box/nbody_disk/nbody_disk.out %r:./a.out"
#PJM --stgin "rank=0-63 ../../../../initial_snapshot/IC_disk/disk_1024_%r.dat %r:./IC_disk/disk_1024_%r.dat"
#PJM --stgout "rank=* %r:./stdf.%r ./disk_N128K_np4096_j%j/"
#PJM --stgout "rank=* %r:./out/* ./disk_N128K_np4096_j%j/out%r/"

#
. /work/system/Env_base
#

export OMP_NUM_THREADS=8
export PARALLEL=8

mpiexec /work/system/bin/msh "mkdir ./out"

mpiexec -of-proc stdf ./a.out -N 64 -f 8 -n 512 -T 10.0 -t 0.4 -o ./out/ -i ./IC_disk/ -s 500
