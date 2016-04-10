all: a.out
CC=mpiFCCpx -Kdynamic_iteration -Keval -Kfast,parallel -Klib -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Kocl -Kopenmp -Koptmsg=2 -Kreduction -Ksimd=2 -O3 -Krestp=all
a.out: main.c Makefile
	$(CC) main.c -o a.out