#!/usr/bin/env gnuplot

set term postscript enhanced color 20

set grid
set log x
set xlabel 'memory footprint / tile'
set ylabel 'performance (DP GFlop/s)'

set out 'figure/flops-over-memory.eps'
plot 'benchmark/memory-task-parallel.txt' u ($4 * 64):6 ps 2 lw 2 t ''

set xlabel 'ontile B/F (DP)'

set out 'figure/ontile-b-over-f.eps'
plot 'benchmark/b-over-f.txt' u ($4):6 ps 2 lw 2 t ''


set xlabel 'offtile B/F (DP)'

set out 'figure/offtile-b-over-f.eps'
plot '< grep "sode 16" benchmark/offchip-b-over-f.txt' u ($6):8 ps 2 lw 2 lt 1 t 'sode=16',\
  '< grep "sode 256" benchmark/offchip-b-over-f.txt' u ($6):8 ps 2 lw 2 lt 2t 'sode=256',\
 '< grep "sode 1024" benchmark/offchip-b-over-f.txt' u ($6):8 ps 2 lw 2 lt 3 t 'sode=1024'
