#!/usr/bin/env python
import sys
import subprocess

# ident = sys.argv[1]


for i in range(0,10000,20):
    ident = "{:06d}".format(i)
    print ident
    with open('scripts/plot.gnu', 'w') as fp:
        fp.write("""
set term png
set pm3d
set pm3d map
set size ratio -1
set cbrange [0:1]
set out "frames/{ident}.png"
splot "frames/{ident}.txt"
""".format(ident=ident))

    subprocess.call("gnuplot scripts/plot.gnu", shell=True)
