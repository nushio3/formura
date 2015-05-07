all: main.out main-1.out

main-1.out: main-1.cpp
	g++ -O2 -Wall -march=core-avx2 main-1.cpp -o main-1.out


main.out: main.cpp proceed-region.cpp params.h
	g++ -O2 -Wall -march=core-avx2 main.cpp proceed-region.cpp -o main.out
