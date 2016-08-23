all:
	./waf build

x.out: main.cpp initial-condition.hpp naive-integrator.hpp Makefile
	g++ -std=c++11 -fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 main.cpp -o x.out

.PHONY: all
