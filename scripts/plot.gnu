
set term png
set pm3d
set pm3d map
set size ratio -1
set cbrange [0:1]
set out "frames/001080.png"
splot "frames/001080.txt"
