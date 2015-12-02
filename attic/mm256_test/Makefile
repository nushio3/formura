all: basic-avx.out


basic-avx.out: basic-avx.cpp
	g++ -O3 -march=core-avx2 basic-avx.cpp -S -o basic-avx.s
	g++ -O3 -march=core-avx2 basic-avx.s -o basic-avx.out
