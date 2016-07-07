rm images-F/*.bin
rsync -avz K:/volume73/data/ra000008/nushio/formura/attic/f-test/*.bin images-F/
./scripts/plot-pearson-F.py big ./images-F/monitor*.bin
