#!/usr/bin/env python
import sys
import subprocess

# ident = sys.argv[1]


for i in range(0,500,2):
    ident = "{:06d}".format(i)
    print ident
    with open('scripts/plot.gnu', 'w') as fp:
        fp.write("""
se gri
set term png
set yrange [-1:1]
set out "frames/av-{ident}.png"
fn = "frames/av-{ident}.txt"
        plot fn w lp t 'dens' lt 3, fn u 1:3  w lp t 'vel' lt 2 , fn u 1:4  w lp t 's' lt 1
""".format(ident=ident))

    subprocess.call("gnuplot scripts/plot.gnu", shell=True)
