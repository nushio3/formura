
set term png
set pm3d
set pm3d map
set size ratio -1
set cbrange [0:1]
set out "frames/003200.png"
splot "frames/003200.txt"
