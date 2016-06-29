#!/bin/sh -x
#PJM --rsc-list "node=1x1x1"
#PJM --mpi "shape=1x1x1"

#time limit
#PJM --name "Bfinalist-test"
#PJM --rsc-list "elapse=0:30:00"
#PJM --rsc-list "rscgrp=micro"
#PJM --mpi "use-rankdir"
#PJM --stg-transfiles all

# stage in  a.out.
#PJM --stgin "./a.out %r:./a.out"
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
export PATH=/opt/FJSVtclang/GM-1.2.0-20/bin:$PATH
export LD_LIBRARY_PATH=/opt/FJSVtclang/GM-1.2.0-20/lib64:$LD_LIBRARY_PATH
mpiexec /work/system/bin/msh "mkdir -p ./out"

#mpiexec -n 1 -ofout-proc=out -oferr-proc=err ./a.out 
mpiexec -n 1 -ofout-proc out -oferr-proc err ./a.out 




