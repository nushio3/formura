all: main.out main-1.out main-dash.out

main-1.out: main-1.cpp
	g++ -O2 -Wall  main-1.cpp -o main-1.out #-march=core-avx2

gen.cpp: generate-dash-stencil.hs
	runhaskell generate-dash-stencil.hs

main-dash.out: main-dash.cpp gen.cpp
	g++ -O2 -Wall -march=core-avx2 main-dash.cpp -o main-dash.out

main.out: main.cpp proceed-region.cpp params.h
	g++ -O2 -Wall main.cpp proceed-region.cpp -o main.out
