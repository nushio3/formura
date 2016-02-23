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
plot fn              w lp lt 3 lw 2 t 'dens' , \
     fn u 1:3        w lp lt 2 lw 2 t 'vel' , \
     fn u 1:4        w lp lt 1 lw 2 t 's', \
     fn u 1:($5/10)  w lp lt 4 lw 2 t 'Bz'
""".format(ident=ident))

    subprocess.call("gnuplot scripts/plot.gnu", shell=True)
