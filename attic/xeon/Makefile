all:
	./waf build

x.out: main.cpp initial-condition.hpp naive-integrator.hpp Makefile
	g++ -std=c++11 -fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 main.cpp -o x.out

saya.out: saya.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large\
	-Wa,-adhln=saya.s -g -fverbose-asm -masm=intel \
	saya.cpp -o saya.out

saya-saya.out: saya-saya.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=saya-saya.s -g -fverbose-asm -masm=intel \
	saya-saya.cpp -o saya-saya.out

saya-bara.out: saya-bara.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=saya-bara.s -g -fverbose-asm -masm=intel \
	saya-bara.cpp -o saya-bara.out

saya-mod.out: saya-mod.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=saya-mod.s -g -fverbose-asm -masm=intel \
	saya-mod.cpp -o saya-mod.out

mystream.out: mystream.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=mystream.s -g -fverbose-asm -masm=intel \
	mystream.cpp -o mystream.out

stencilstream.out: stencilstream.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=stencilstream.s -g -fverbose-asm -masm=intel \
	stencilstream.cpp -o stencilstream.out



tv.out: tv.cpp
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 \
	-Wa,-adhln=tv.s -g -fverbose-asm -masm=intel \
	tv.cpp -o tv.out

.PHONY: all
