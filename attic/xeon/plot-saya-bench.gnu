#!/usr/bin/env gnuplot
set term postscript enhanced color 20

set log xy
se gri
set xlabel "mini-region memory footprint(MB)"
set ylabel "load bandwidth (GB/s)"
set arrow from 40,10 to 40,1000 nohead lc 2
set arrow from 4,10 to 4,1000 nohead lc 2
set arrow from 0.5,10 to 0.5,1000 nohead lc 2
set label 4 at first 100,12 "Memory"
set label 3 at first 10,12 "L3"
set label 2 at first 1,12 "L2"
set label 1 at first 0.1,12 "L1"
set yrange[10:1000]
set out "benchmark-saya-saya.eps"
plot 'benchmark-saya-saya.txt' u (8*4*$2*$3*$4/2**20):($16)  t ""
set out "benchmark-saya-bara.eps"
plot 'benchmark-saya-bara.txt' u (8*2*$1*$2*$3*$4/2**20):($13)  t ""
set out "benchmark-standalone.eps"
plot 'benchmark-standalone.txt' u (8*2*$1*$2*$3*$4/2**20):($13)  t ""
