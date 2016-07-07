rm images-K/*.bin
rsync -avz K:/volume73/data/ra000008/nushio/formura/attic/f-test/*.bin images-K/
./scripts/plot-pearson-K.py big ./images-K/monitor*.bin
