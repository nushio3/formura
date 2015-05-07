all: main.out

main.out: main.cpp proceed-region.cpp
	g++ -O2 -Wall -march=core-avx2 main.cpp proceed-region.cpp -o main.out
