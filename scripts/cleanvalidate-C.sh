rm  examples/champion*internal*
stack install
stack exec formura -- examples/champion.fmr -o examples/champion.c
(cd examples/; ../bin/make-make -C)
rsync -avz ./examples/Makefile examples/*champion* K:/volume73/data/ra000008/nushio/formura/attic/c-test/
