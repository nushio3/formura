set term postscript enhanced color solid 20
set out 'result/benchmark.eps'
set log x
set grid
set xlabel 'Problem Size (NX^2)'
set ylabel 'Flop/s'
set yrange [0:4e9]
set key left top
set format y "%2.1t{/Symbol \327}10^{%L}"
set format x "10^{%L}"
plot '< grep "PiTCH-" result/benchmark.txt' u ($3**2):8 t 'PiTCH', \
     '< grep PiTCHOpt result/benchmark.txt' u ($3**2):8 t 'Optimized PiTCH' , \
     '< grep NoTB result/benchmark.txt'     u ($3**2):8 t 'No Blocking'
