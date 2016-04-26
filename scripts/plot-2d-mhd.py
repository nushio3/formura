#!/usr/bin/env python
import sys
import subprocess

# ident = sys.argv[1]

fns = sys.argv
for fn in fns[1:]:
    print fn
    fn_out = fn.replace('.txt', '.png')
    fn_in = fn.replace('.txt', '.tmp')
    with open(fn,'r') as fp:
        with open(fn_in,'w') as fp2:
            con = fp.read()
            fp2.write(con.replace('nan','-1'))
    with open('scripts/plot.gnu', 'w') as fp:
        fp.write("""
        set term png 26 size 1280,900
        set pm3d
        set pm3d map
        set size ratio -1
        set cbrange [-1:1]
        set out "{fn_out}"
        set xrange [0:600]
        set yrange [0:600]
        set title 't = 6000'
        splot "{fn_in}" u ($1-8):($2-8):3 t ''
""".format(fn_in=fn_in, fn_out=fn_out))

    subprocess.call("gnuplot scripts/plot.gnu", shell=True)
