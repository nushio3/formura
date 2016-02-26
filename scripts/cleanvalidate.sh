stack clean
make clean
rm CMakeCache.txt
stack build
./cmake-for-x86.sh
stack exec formura -- examples/2d-mhd.fmr
make
./bin/2d-mhd.out 5000 100
