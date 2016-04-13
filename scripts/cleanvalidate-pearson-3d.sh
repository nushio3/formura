./scripts/cleanvalidate.sh pearson-3d
rm out/*
rm images/*
nice mpiexec -n 1 ./bin/pearson-3d.out 8192 256
sleep 1
./scripts/plot-pearson-bin.py little out/*.txt
