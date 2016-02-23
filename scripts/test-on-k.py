#!/usr/bin/env python3

import datetime, random, subprocess, sys

host = 'a03209@k.aics.riken.jp'

# tmpdir = 'work/{}-{:08}'.format(datetime.datetime.now().strftime('%Y-%m-%d/%H-%M-%S'), random.randint(0,99999999))
tmpdir = 'work'


srcfiles = ['pearson.h', 'pearson.c', 'pearson-main.cpp']
srcdir = 'examples/'
srcpaths = [srcdir + fn for fn in srcfiles]

def cmd(str):
    print(str, file=sys.stderr)
    subprocess.call(str, shell=True)

cmd('mkdir -p {}'.format(tmpdir))
cmd('ssh {} mkdir -p {}'.format(host,tmpdir))
cmd('cp {} {}'.format(' '.join(srcpaths),tmpdir))
cmd('scp {}/*  {}:{}'.format(tmpdir, host,tmpdir))
