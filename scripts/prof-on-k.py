#!/usr/bin/env python3

import datetime, random, subprocess, sys

host = 'a03209@k.aics.riken.jp'

uniqkey = '{}-{:08}'.format(datetime.datetime.now().strftime('%Y-%m-%d/%H-%M-%S'), random.randint(0,99999999))
tmpdir = 'work/' + uniqkey
#tmpdir = 'work/experimental'
destdir = '/volume81/data/ra000008/nushio/' + uniqkey


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
#PJM --rsc-list "node=8"

#time limit
#PJM --rsc-list "elapse=12:00:00"
#PJM --rsc-list "rscgrp=small"
# #PJM --rsc-list "rscgrp=large"
#PJM --mpi "use-rankdir"
#PJM --stg-transfiles all

# stage in  hello.out.
#PJM --stgin "./a.out %r:./a.out"
#PJM --stgout "%r:./out-3d-mhd/* ./out-3d-mhd-%r-%j/"

#statistics output
#PJM -s

# config environmental variables
. /work/system/Env_base
mpiexec /work/system/bin/msh "mkdir ./out-3d-mhd"

fapp -C -d prof-3dmhd-01 -Hpa=1 mpirun -n 8 ./a.out
fapp -C -d prof-3dmhd-02 -Hpa=2 mpirun -n 8 ./a.out
fapp -C -d prof-3dmhd-03 -Hpa=3 mpirun -n 8 ./a.out
fapp -C -d prof-3dmhd-04 -Hpa=4 mpirun -n 8 ./a.out
fapp -C -d prof-3dmhd-05 -Hpa=5 mpirun -n 8 ./a.out
fapp -C -d prof-3dmhd-06 -Hpa=6 mpirun -n 8 ./a.out
fapp -C -d prof-3dmhd-07 -Hpa=7 mpirun -n 8 ./a.out

mkdir prof-csv-3dmhd
fapppx -A -p all -l0 -d prof-3dmhd-01 -o prof-csv-3dmhd/output_prof_1.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-3dmhd-02 -o prof-csv-3dmhd/output_prof_2.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-3dmhd-03 -o prof-csv-3dmhd/output_prof_3.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-3dmhd-04 -o prof-csv-3dmhd/output_prof_4.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-3dmhd-05 -o prof-csv-3dmhd/output_prof_5.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-3dmhd-06 -o prof-csv-3dmhd/output_prof_6.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-3dmhd-07 -o prof-csv-3dmhd/output_prof_7.csv -tcsv -Hpa



""")
cmd('chmod 755 '+submit_script_path)

cmd('scp {}/*  {}:{}'.format(tmpdir, host,destdir))
on_k('mpiFCCpx 3d-mhd*.c 3d-mhd-main-prof.cpp')
#on_k('mpiFCCpx 3d-mhd*.c 3d-mhd-main-prof.cpp -o a.out -O3 -Kfast,parallel -Kocl -Klib -Koptmsg=2 -Karray_private -Kinstance=8 -Kdynamic_iteration -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Keval  -Kreduction -Ksimd=2')
on_k('pjsub submit.sh')
