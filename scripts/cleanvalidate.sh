rm  examples/$1*.c examples/Makefile bin/$1.out
stack install
stack exec formura -- examples/$1.fmr
./cmake-for-x86.sh
make -j8 bin/$1.out
# WARNING: you need to symbolic link the .bin folder
# mkdir -p out-2d-mhd
# rm out-2d-mhd/*
# ./bin/2d-mhd.out 5000 100
# ./scripts/plot-2d-mhd.py out-2d-mhd/*.txt
