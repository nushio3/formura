all: basic-avx.out host.out


basic-avx.out: basic-avx.cpp
	g++ -O3 -march=core-avx2 basic-avx.cpp -S -o basic-avx.s
	g++ -O3 -march=core-avx2 basic-avx.s -o basic-avx.out

host.out: host.cpp loop-body.cpp
	g++ -O3 -march=core-avx2 host.cpp -S -o host.s
	g++ -O3 -march=core-avx2 host.s -o host.out
