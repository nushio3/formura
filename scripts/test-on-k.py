#!/usr/bin/env python3

import datetime, random, subprocess, sys

host = 'a03209@k.aics.riken.jp'

tmpdir = 'work/{}-{:08}'.format(datetime.datetime.now().strftime('%Y-%m-%d/%H-%M-%S'), random.randint(0,99999999))
# tmpdir = 'work'


srcfiles = ['2d-mhd.h', '2d-mhd.c', '2d-mhd-main.cpp']
srcdir = 'examples/'
srcpaths = [srcdir + fn for fn in srcfiles]

def cmd(str):
    print(str, file=sys.stderr)
    subprocess.call(str, shell=True)

def on_k(str):
    cmd("ssh {} '(cd {}; {})'".format(host, tmpdir,str))

cmd('mkdir -p {}'.format(tmpdir))
cmd('ssh {} mkdir -p {}'.format(host,tmpdir))
cmd('cp {} {}'.format(' '.join(srcpaths),tmpdir))

submit_script_path = '{}/submit.sh'.format(tmpdir)

with(open(submit_script_path,'w')) as fp:
    fp.write("""
#!/bin/sh -x
#PJM --rsc-list "node=2"

#time limit: 1hour
#PJM --rsc-list "elapse=00:30:00"
#PJM --mpi "use-rankdir"
#PJM --stg-transfiles all

# stage in  hello.out.
#PJM --stgin "./a.out %r:./a.out"
#PJM --stgout "%r:./frames/* ./frames-%r-%j/"

#statistics output
#PJM -s

# config environmental variables
. /work/system/Env_base
mpiexec /work/system/bin/msh "mkdir ./frames"

mpirun -n 2 ./a.out
""")
cmd('chmod 755 '+submit_script_path)

cmd('scp {}/*  {}:{}'.format(tmpdir, host,tmpdir))
on_k('mpiFCCpx 2d-mhd.c 2d-mhd-main.cpp -o a.out -O3 -Kfast,parallel  -Kocl -Koptmsg=2 -Karray_private -Kinstance=8 -Kdynamic_iteration -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Keval  -Kreduction -Ksimd=2')
on_k('pjsub submit.sh')
