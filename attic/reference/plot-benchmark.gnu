set term postscript enhanced color solid 20
set out 'result/benchmark.eps'
set log x
set grid
set xlabel 'Problem Size (NX)'
set ylabel 'Flop/s'
set yrange [0:]
set key left top
set format y "%2.1t{/Symbol \327}10^{%L}"
set format x "10^{%L}"

set label "N_{T}=8"  at 16,1.3e9 rotate by 75 right
set label "N_{T}=16"  at 32,1.6e9 rotate by 75 right
set label "N_{T}=32"  at 64,1.6e9 rotate by 75 right
set label "N_{T}=64"  at 128,1.8e9 rotate by 75 right
set label "N_{T}=128"  at 256,2.0e9 rotate by 75 right
set label "N_{T}=256"  at 512,1.9e9 rotate by 75 right


plot \
     '< grep PiTCH-256 result/analyzed.txt' u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#ff0000" t 'PiTCH' , \
     '< grep PiTCH-128 result/analyzed.txt' u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#df0000" t '' , \
     '< grep PiTCH-64 result/analyzed.txt'  u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#bf0000" t '' , \
     '< grep PiTCH-32 result/analyzed.txt'  u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#9f0000" t '' , \
     '< grep PiTCH-16 result/analyzed.txt'  u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#7f0000" t '' , \
     '< grep PiTCH-8 result/analyzed.txt'   u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#5f0000" t '' , \
     '< grep PiTCH-256 result/analyzed.txt' u 2:3 w l lw 2 lc rgb "#ff0000" t '' , \
     '< grep PiTCH-128 result/analyzed.txt' u 2:3 w l lw 2 lc rgb "#df0000" t '' , \
     '< grep PiTCH-64 result/analyzed.txt'  u 2:3 w l lw 2 lc rgb "#bf0000" t '' , \
     '< grep PiTCH-32 result/analyzed.txt'  u 2:3 w l lw 2 lc rgb "#9f0000" t '' , \
     '< grep PiTCH-16 result/analyzed.txt'  u 2:3 w l lw 2 lc rgb "#7f0000" t '' , \
     '< grep PiTCH-8 result/analyzed.txt'   u 2:3 w l lw 2 lc rgb "#5f0000" t '' , \
     '< grep PiTCHOpt-256 result/analyzed.txt' u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#00ff00" t 'Optimized PiTCH' , \
     '< grep PiTCHOpt-128 result/analyzed.txt' u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#00df00" t '' , \
     '< grep PiTCHOpt-64 result/analyzed.txt'  u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#00bf00" t '' , \
     '< grep PiTCHOpt-32 result/analyzed.txt'  u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#009f00" t '' , \
     '< grep PiTCHOpt-16 result/analyzed.txt'  u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#007f00" t '' , \
     '< grep PiTCHOpt-8 result/analyzed.txt'   u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "#005f00" t '' , \
     '< grep PiTCHOpt-256 result/analyzed.txt' u 2:3 w l lw 2 lc rgb "#00ff00" t '' , \
     '< grep PiTCHOpt-128 result/analyzed.txt' u 2:3 w l lw 2 lc rgb "#00df00" t '' , \
     '< grep PiTCHOpt-64 result/analyzed.txt'  u 2:3 w l lw 2 lc rgb "#00bf00" t '' , \
     '< grep PiTCHOpt-32 result/analyzed.txt'  u 2:3 w l lw 2 lc rgb "#009f00" t '' , \
     '< grep PiTCHOpt-16 result/analyzed.txt'  u 2:3 w l lw 2 lc rgb "#007f00" t '' , \
     '< grep PiTCHOpt-8 result/analyzed.txt'   u 2:3 w l lw 2 lc rgb "#005f00" t '' , \
     '< grep NoTB result/analyzed.txt'         u 2:3:4:5 w yerr pt 0 lw 2 lc rgb "blue" t 'No Blocking' ,\
     '< grep NoTB result/analyzed.txt'         u 2:3 w l lw 2 lc rgb "blue" t ''
