all: main.out main-1d.out main-2d.out main-dash.out main-2d-opt.out main-2d-simd.out


main-1d.out: main-1d.cpp
	g++ -O2 -Wall  main-1d.cpp -o main-1d.out #-march=core-avx2

main-2d.out: main-2d.cpp
	g++ -O2 -Wall  main-2d.cpp -o main-2d.out -march=core-avx2

main-2d-opt.out: main-2d-opt.cpp
	g++ -O2 -Wall  main-2d-opt.cpp -o main-2d-opt.out -march=core-avx2

main-2d-simd.out: body-2d-pitch-simd.cpp benchmark-2d-main.cpp
	cp body-2d-pitch-simd.cpp body.cpp
	g++ -O2 -Wall -march=core-avx2 -S benchmark-2d-main.cpp -o main-2d-simd.s
	cp main-2d-simd.s  main-2d-simd.0.s
	./patch-simd.hs main-2d-simd.s
	g++ -O2 -Wall main-2d-simd.s -o main-2d-simd.out


gen.cpp: generate-dash-stencil.hs
	runhaskell generate-dash-stencil.hs

main-dash.out: main-dash.cpp gen.cpp
	g++ -O2 -Wall main-dash.cpp -o main-dash.out #-march=core-avx2

main.out: main.cpp proceed-region.cpp params.h
	g++ -O2 -Wall main.cpp proceed-region.cpp -o main.out
