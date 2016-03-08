#!/usr/bin/env python3

import datetime, random, subprocess, sys

host = 'a03209@k.aics.riken.jp'

uniqkey = '{}-{:08}'.format(datetime.datetime.now().strftime('%Y-%m-%d/%H-%M-%S'), random.randint(0,99999999))
tmpdir = 'work/' + uniqkey
#tmpdir = 'work/experimental'
destdir = '/volume81/data/ra000008/nushio/' + uniqkey


srcfiles = ['3d-mhd.h', '3d-mhd*.c', '3d-mhd-main.cpp']
srcdir = 'examples/'
srcpaths = [srcdir + fn for fn in srcfiles]

def cmd(str):
    print(str, file=sys.stderr)
    subprocess.call(str, shell=True)

def on_k(str):
    cmd("ssh {} '(cd {}; {})'".format(host, destdir,str))

cmd('mkdir -p {}'.format(tmpdir))
cmd('ssh {} mkdir -p {}'.format(host,destdir))
cmd('cp {} {}'.format(' '.join(srcpaths),tmpdir))
cmd('cp cmake-for-k.sh {}/cmake.sh'.format(tmpdir))
cmd('cp CMakeLists-for-k.txt {}/CMakeLists.txt'.format(tmpdir))

submit_script_path = '{}/submit.sh'.format(tmpdir)

with(open(submit_script_path,'w')) as fp:
    fp.write("""
#!/bin/sh -x
#PJM --rsc-list "node=48x54x32"

#time limit: 30min
#PJM --rsc-list "elapse=00:30:00"
#PJM --rsc-list "rscgrp=huge"
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

mpirun -n 82944 ./a.out
""")
cmd('chmod 755 '+submit_script_path)

cmd('scp {}/*  {}:{}'.format(tmpdir, host,destdir))
#on_k('mpiFCCpx 3d-mhd*.c 3d-mhd-main.cpp')
on_k('mpiFCCpx 3d-mhd*.c 3d-mhd-main.cpp -o a.out -O3 -Kfast,parallel -Kocl -Klib -Koptmsg=2 -Karray_private -Kinstance=8 -Kdynamic_iteration -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Keval  -Kreduction -Ksimd=2')
on_k('pjsub submit.sh')
