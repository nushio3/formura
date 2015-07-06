#!/bin/sh
#PJM -L rscunit=gwmpc
#PJM -L node=1
#PJM -L elapse=1:00:00
#PJM -j

cp /opt/FJSVmxlang/GM-2.0.0-02/bin/fapp .

export OMP_NUM_THREADS=32
fapp -C -d pa.1 -Hpa=1   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.2 -Hpa=2   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.3 -Hpa=3   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.4 -Hpa=4   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.5 -Hpa=5   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.6 -Hpa=6   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.7 -Hpa=7   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.8 -Hpa=8   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.9 -Hpa=9   ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.10 -Hpa=10 ./benchmark-2d-fujitsu.out HOKUSAI
fapp -C -d pa.11 -Hpa=11 ./benchmark-2d-fujitsu.out HOKUSAI
