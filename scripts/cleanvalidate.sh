stack clean
make clean
rm CMakeCache.txt
stack build
./cmake-for-x86.sh
# WARNING: you need to symbolic link the .bin folder
stack exec formura -- examples/2d-mhd.fmr
make
mkdir -p out-2d-mhd
rm out-2d-mhd/*
./bin/2d-mhd.out 5000 100
./scripts/plot-2d-mhd.py out-2d-mhd/*.txt
