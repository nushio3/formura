rm  examples/pearson-3d*.c examples/Makefile
stack install
stack exec formura -- examples/pearson-3d.fmr
./cmake-for-x86.sh
make bin/pearson-3d.out
# WARNING: you need to symbolic link the .bin folder
# mkdir -p out-2d-mhd
# rm out-2d-mhd/*
# ./bin/2d-mhd.out 5000 100
# ./scripts/plot-2d-mhd.py out-2d-mhd/*.txt
