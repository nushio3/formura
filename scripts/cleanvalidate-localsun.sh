rm  examples/3d-localsun*.c examples/Makefile
stack install
stack exec formura -- examples/3d-localsun.fmr
./cmake-for-x86.sh
make bin/3d-localsun.out
# WARNING: you need to symbolic link the .bin folder
# mkdir -p out-2d-mhd
# rm out-2d-mhd/*
# ./bin/2d-mhd.out 5000 100
# ./scripts/plot-2d-mhd.py out-2d-mhd/*.txt
