all: knlstream.out task-parallel.out


tmp.out: tmp.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3  -mtune=knl -restrict  -mcmodel=large -ax=MIC-AVX512 \
	-lmemkind \
	-Wa,-adhln=tmp.s \
	tmp.cpp -o tmp.out


knlstream.out: knlstream.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3 -funroll-loops  -shared-intel -mcmodel=large \
	-Wa,-adhln=knlstream.s -g -fverbose-asm -masm=intel -lmemkind \
	knlstream.cpp -o knlstream.out

task-parallel.out: task-parallel.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3  -mtune=knl -restrict  -mcmodel=large -ax=MIC-AVX512 \
	-lmemkind \
	-Wa,-adhln=task-parallel.s \
	task-parallel.cpp -o task-parallel.out

1d-stencil.out: 1d-stencil.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3  -mtune=knl -restrict  -mcmodel=large -ax=MIC-AVX512 \
	-lmemkind \
	-Wa,-adhln=1d-stencil.s \
	1d-stencil.cpp -o 1d-stencil.out

1d-stencil-morecomp.out: 1d-stencil-morecomp.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3  -mtune=knl -restrict  -mcmodel=large -ax=MIC-AVX512 \
	-lmemkind \
	-Wa,-adhln=1d-stencil-morecomp.s \
	1d-stencil-morecomp.cpp -o 1d-stencil-morecomp.out

1d-stencil-barrier.out: 1d-stencil-barrier.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3  -mtune=knl -restrict  -mcmodel=large -ax=MIC-AVX512 \
	-lmemkind \
	-Wa,-adhln=1d-stencil-barrier.s \
	1d-stencil-barrier.cpp -o 1d-stencil-barrier.out

1d-stencil-comm.out: 1d-stencil-comm.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3  -mtune=knl -restrict  -mcmodel=large -ax=MIC-AVX512 \
	-lmemkind \
	-Wa,-adhln=1d-stencil-comm.s \
	1d-stencil-comm.cpp -o 1d-stencil-comm.out

1d-stencil-realcomm.out: 1d-stencil-realcomm.cpp Makefile
	icpc -std=c++11 \
	-fopenmp -O3  -mtune=knl -restrict  -mcmodel=large -ax=MIC-AVX512 \
	-lmemkind \
	-Wa,-adhln=1d-stencil-realcomm.s \
	1d-stencil-realcomm.cpp -o 1d-stencil-realcomm.out


.PHONY: all
