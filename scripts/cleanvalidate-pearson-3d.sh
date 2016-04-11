./scripts/cleanvalidate.sh pearson-3d
rm out/*
rm images/*
nice mpiexec -n 8 ./bin/pearson-3d.out 32000 100
sleep 1
./scripts/plot-pearson-bin.py little out/*.txt
