all:
	./waf build

x.out: main.cpp initial-condition.hpp naive-integrator.hpp Makefile
	g++ -std=c++11 -fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 main.cpp -o x.out

saya.out: saya.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 \
	-Wa,-adhln=saya.s -g -fverbose-asm -masm=intel \
	saya.cpp -o saya.out

saya-mod.out: saya-mod.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 \
	-Wa,-adhln=saya-mod.s -g -fverbose-asm -masm=intel \
	saya-mod.cpp -o saya-mod.out


tv.out: tv.cpp
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 \
	-Wa,-adhln=tv.s -g -fverbose-asm -masm=intel \
	tv.cpp -o tv.out

.PHONY: all
