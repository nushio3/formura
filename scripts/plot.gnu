
se gri
set term png
set yrange [-1:1]
set out "frames/av-000498.png"
fn = "frames/av-000498.txt"
plot fn              w lp lt 3 lw 2 t 'dens' ,      fn u 1:3        w lp lt 2 lw 2 t 'vel' ,      fn u 1:4        w lp lt 1 lw 2 t 's',      fn u 1:($5/10)  w lp lt 4 lw 2 t 'Bz'
