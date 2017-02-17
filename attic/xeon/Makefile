all:
	./waf build

x.out: main.cpp initial-condition.hpp naive-integrator.hpp Makefile
	g++ -std=c++11 -fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 main.cpp -o x.out

saya-intel.out: saya.cpp Makefile
	icpc -fopenmp -std=c++11 -O3 saya.cpp -o saya-intel.out


saya.out: saya.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=saya.s -g -fverbose-asm -masm=intel \
	saya.cpp -o saya.out

standalone.out: standalone.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=standalone.s -g -fverbose-asm -masm=intel \
	standalone.cpp -o standalone.out


standalone-1d.out: standalone-1d.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=standalone-1d.s -g -fverbose-asm -masm=intel \
	standalone-1d.cpp -o standalone-1d.out


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

mystream-3d.out: mystream-3d.cpp Makefile
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -mcmodel=large \
	-Wa,-adhln=mystream-3d.s -g -fverbose-asm -masm=intel \
	mystream-3d.cpp -o mystream-3d.out


knlstream.out: knlstream.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -shared-intel -mcmodel=large \
	-Wa,-adhln=knlstream.s -g -fverbose-asm -masm=intel -lmemkind \
	knlstream.cpp -o knlstream.out


task-parallel.out: task-parallel.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 -shared-intel -mcmodel=large \
	-Wa,-adhln=task-parallel.s -g -fverbose-asm -masm=intel -lmemkind \
	task-parallel.cpp -o task-parallel.out



tv.out: tv.cpp
	g++ -std=c++11 \
	-fopenmp -O3 -funroll-loops -march=core-avx2 -ftree-vectorize -ftree-vectorizer-verbose=1 \
	-Wa,-adhln=tv.s -g -fverbose-asm -masm=intel \
	tv.cpp -o tv.out

.PHONY: all
