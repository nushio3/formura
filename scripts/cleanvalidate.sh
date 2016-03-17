rm  examples/3d-mhd*.c
stack exec formura -- examples/3d-mhd.fmr
./cmake-for-x86.sh
# WARNING: you need to symbolic link the .bin folder
make bin/3d-mhd.out -j8
# mkdir -p out-2d-mhd
# rm out-2d-mhd/*
# ./bin/2d-mhd.out 5000 100
# ./scripts/plot-2d-mhd.py out-2d-mhd/*.txt
