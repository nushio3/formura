all: main-2d-opt.out main-2d-simd.out


main-1d.out: main-1d.cpp
	g++ -O2 -Wall  main-1d.cpp -o main-1d.out #-march=core-avx2

main-2d.out: main-2d.cpp
	g++ -O2 -Wall  main-2d.cpp -o main-2d.out -march=core-avx2

main-2d-opt.out: main-2d-opt.cpp
	g++ -O2 -Wall  main-2d-opt.cpp -o main-2d-opt.out -march=core-avx2

main-2d-simd.out: body-2d-pitch-simd.cpp benchmark-2d-main.cpp
	cp body-2d-pitch-simd.cpp body.cpp
	g++ -O2 -Wall -march=core-avx2 -fopenmp  -mcmodel=large -S benchmark-2d-main.cpp -o main-2d-simd.s
	cp main-2d-simd.s  main-2d-simd.0.s
	./patch-simd.hs main-2d-simd.s
	g++ -O2 -Wall main-2d-simd.s  -fopenmp  -mcmodel=large  -o main-2d-simd.out


benchmark-2d-fujitsu.out: benchmark-2d-fujitsu.cpp 
	FCCpx -Kfast,openmp,parallel,ocl,optmsg=2  -Nsrc,sta,lst=t benchmark-2d-fujitsu.cpp  -S  -o benchmark-2d-fujitsu.s
	FCCpx -Kfast,openmp,parallel benchmark-2d-fujitsu.s -o benchmark-2d-fujitsu.out


main.out: main.cpp proceed-region.cpp params.h
	g++ -O2 -Wall main.cpp proceed-region.cpp -o main.out
