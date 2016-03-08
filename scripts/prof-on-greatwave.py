#!/usr/bin/env python3

import datetime, random, subprocess, sys

host = 'greatwave'

uniqkey = '{}-{:08}'.format(datetime.datetime.now().strftime('%Y-%m-%d/%H-%M-%S'), random.randint(0,99999999))
tmpdir = 'work/' + uniqkey
#tmpdir = 'work/experimental'
destdir = '/home/nushio/work/' + uniqkey


srcfiles = ['3d-mhd.h', '3d-mhd*.c', '3d-mhd-main-prof.cpp']
srcdir = 'examples/'
srcpaths = [srcdir + fn for fn in srcfiles]

def cmd(str):
    print(str, file=sys.stderr)
    subprocess.call(str, shell=True)

def on_k(str):
    cmd("ssh {} '(cd {}; {})'".format(host, destdir,str))

cmd('rm {}/3d-mhd_internal_*.c'.format(srcdir))
cmd('stack exec formura -- {}/3d-mhd.fmr'.format(srcdir))
cmd('mkdir -p {}'.format(tmpdir))
cmd('ssh {} mkdir -p {}'.format(host,destdir))
cmd('cp {} {}'.format(' '.join(srcpaths),tmpdir))
cmd('cp cmake-for-k.sh {}/cmake.sh'.format(tmpdir))
cmd('cp CMakeLists-for-k.txt {}/CMakeLists.txt'.format(tmpdir))

submit_script_path = '{}/submit.sh'.format(tmpdir)

with(open(submit_script_path,'w')) as fp:
    fp.write("""
#!/bin/sh -x
#PJM -L rscunit=gwmpc
#PJM -L node=1

#time limit
#PJM --rsc-list "elapse=12:00:00"
# #PJM --rsc-list "rscgrp=large"
#PJM --mpi "use-rankdir"
# #PJM --stg-transfiles all

#  # stage in  hello.out.
#  #PJM --stgin "./a.out %r:./a.out"
#  #PJM --stgout "%r:./out/* ./out-%r-%j/"

#statistics output
#PJM -s

# config environmental variables
. /work/system/Env_base
mpiexec /work/system/bin/msh "mkdir ./out"

mpirun -n 4 fapp -C -d out/prof-01 -Hpa=1 ./a.out
mpirun -n 4 fapp -C -d out/prof-02 -Hpa=2 ./a.out
mpirun -n 4 fapp -C -d out/prof-03 -Hpa=3 ./a.out
mpirun -n 4 fapp -C -d out/prof-04 -Hpa=4 ./a.out
mpirun -n 4 fapp -C -d out/prof-05 -Hpa=5 ./a.out
mpirun -n 4 fapp -C -d out/prof-06 -Hpa=6 ./a.out
mpirun -n 4 fapp -C -d out/prof-07 -Hpa=7 ./a.out
mpirun -n 4 fapp -C -d out/prof-08 -Hpa=8 ./a.out
mpirun -n 4 fapp -C -d out/prof-09 -Hpa=9 ./a.out
mpirun -n 4 fapp -C -d out/prof-10 -Hpa=10 ./a.out
mpirun -n 4 fapp -C -d out/prof-11 -Hpa=11 ./a.out

fapppx -A -p all -l0 -d out/prof-01 -o out/prof-1.csv -tcsv -Hpa
fapppx -A -p all -l0 -d out/prof-02 -o out/prof-2.csv -tcsv -Hpa
fapppx -A -p all -l0 -d out/prof-03 -o out/prof-3.csv -tcsv -Hpa
fapppx -A -p all -l0 -d out/prof-04 -o out/prof-4.csv -tcsv -Hpa
fapppx -A -p all -l0 -d out/prof-05 -o out/prof-5.csv -tcsv -Hpa
fapppx -A -p all -l0 -d out/prof-06 -o out/prof-6.csv -tcsv -Hpa
fapppx -A -p all -l0 -d out/prof-07 -o out/prof-7.csv -tcsv -Hpa



""")
cmd('chmod 755 '+submit_script_path)

cmd('scp {}/*  {}:{}'.format(tmpdir, host,destdir))
on_k('mpiFCCpx -O1 3d-mhd*.c 3d-mhd-main-prof.cpp')
#on_k('mpiFCCpx 3d-mhd*.c 3d-mhd-main-prof.cpp -o a.out -O3 -Kfast,parallel -Kocl -Klib -Koptmsg=2 -Karray_private -Kinstance=8 -Kdynamic_iteration -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Keval  -Kreduction -Ksimd=2')
on_k('pjsub submit.sh')
