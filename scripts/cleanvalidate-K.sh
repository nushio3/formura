rm  examples/finalist*.f90 examples/Makefile bin/finalist.out examples/*internal*
stack install
stack exec formura -- examples/finalist.fmr -o examples/finalist.f90
(cd examples/; ../bin/make-make)
rsync -avz ./examples/Makefile examples/*.f90 K:/volume73/data/ra000008/nushio/formura/attic/f-test
#./cmake-for-x86.sh
#make -j8 bin/$1.out
# WARNING: you need to symbolic link the .bin folder
# mkdir -p out-2d-mhd
# rm out-2d-mhd/*
# ./bin/2d-mhd.out 5000 100
# ./scripts/plot-2d-mhd.py out-2d-mhd/*.txt
