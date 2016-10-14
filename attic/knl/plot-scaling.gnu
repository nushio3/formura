#!/usr/bin/env gnuplot

set term postscript enhanced color 20

set grid
set log x
set xlabel 'memory footprint / tile'
set ylabel 'performance (DP GFlop/s)'

set out 'figure/flops-over-memory.eps'
plot 'benchmark/memory-task-parallel.txt' u ($4 * 64):6 ps 2 lw 2 t ''
