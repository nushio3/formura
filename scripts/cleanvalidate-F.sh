rm  examples/finalist*.f90 examples/Makefile bin/finalist.out examples/*internal*
stack install
stack exec formura -- examples/finalist.fmr -o examples/finalist.f90
(cd examples/; ../bin/make-make -F)
rsync -avz ./examples/Makefile examples/*.f90 K:/volume73/data/ra000008/nushio/formura/attic/f-test
