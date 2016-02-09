set term png
set pm3d
set pm3d map
set size ratio -1
set cbrange [-1:2]
set out "frames/000010.png"
splot "frames/000010.txt"
