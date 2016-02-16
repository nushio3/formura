
se gri
set term png
set yrange [-1:1]
set out "frames/av-000498.png"
fn = "frames/av-000498.txt"
        plot fn w lp t 'dens' lt 3, fn u 1:3  w lp t 'vel' lt 2 , fn u 1:4  w lp t 's' lt 1
