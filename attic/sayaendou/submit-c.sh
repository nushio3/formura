#!/bin/sh -x
#PJM --rsc-list "node=1"
#PJM --mpi "shape=1"

#time limit
#PJM --name "Bnative"
#PJM --rsc-list "elapse=1:00:00"
#PJM --rsc-list "rscgrp=small"
#PJM --mpi "use-rankdir"
#PJM --stg-transfiles all

# stage in  c.out.
#PJM --stgin "./c.out %r:./c.out"
#PJM --stgout "%r:./out/* ./out/out-%r/"
#PJM --stgout "%r:./prof-ip/* ./out/prof-ip/"
#PJM --stgout "%r:./prof-01/* ./out/prof-01/"
#PJM --stgout "%r:./prof-02/* ./out/prof-02/"
#PJM --stgout "%r:./prof-03/* ./out/prof-03/"
#PJM --stgout "%r:./prof-04/* ./out/prof-04/"
#PJM --stgout "%r:./prof-05/* ./out/prof-05/"
#PJM --stgout "%r:./prof-06/* ./out/prof-06/"
#PJM --stgout "%r:./prof-07/* ./out/prof-07/"
#PJM --stgout "%r:./prof-C/* ./out/prof-C/"
#PJM --stgout "%r:./prof-I/* ./out/prof-I/"
#PJM --stgout "%r:./prof-M/* ./out/prof-M/"
#PJM --stgout "%r:./prof-P/* ./out/prof-P/"
#PJM --stgout "%r:./prof-S/* ./out/prof-S/"
#PJM --stgout "%r:./prof-mpi/* ./out/prof-mpi/"
#PJM --stgout "%r:./prof-X3/* ./out/prof-X3/"


#statistics output
#PJM -s

# config environmental variables
. /work/system/Env_base
mpiexec /work/system/bin/msh "mkdir ./out"

fapp -C -d prof-X3 -Hevent=Statistics  mpirun -n 1 ./c.out 65536 65536

fapp -C -d prof-C -Hevent=Cache        mpirun -n 1 ./c.out
fapp -C -d prof-I -Hevent=Instructions mpirun -n 1 ./c.out
fapp -C -d prof-M -Hevent=MEM_access   mpirun -n 1 ./c.out
fapp -C -d prof-P -Hevent=Performance  mpirun -n 1 ./c.out
fipp -m 30000 -C -d prof-ip -Icall,hwm mpirun -n 1 ./c.out
fapp -C -d prof-01 -Hpa=1 mpirun -n 1 ./c.out
fapp -C -d prof-02 -Hpa=2 mpirun -n 1 ./c.out
fapp -C -d prof-03 -Hpa=3 mpirun -n 1 ./c.out
fapp -C -d prof-04 -Hpa=4 mpirun -n 1 ./c.out
fapp -C -d prof-05 -Hpa=5 mpirun -n 1 ./c.out
fapp -C -d prof-06 -Hpa=6 mpirun -n 1 ./c.out
fapp -C -d prof-07 -Hpa=7 mpirun -n 1 ./c.out
fapp -C -d prof-mpi -Impi mpirun -n 1 ./c.out

