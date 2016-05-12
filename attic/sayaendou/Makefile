all: a.out
# CC=mpiFCCpx -Kalias_const -Karray_private -Kdynamic_iteration -Keval -Kfast -Kinstance=8 -Klib -Kloop_fission -Kloop_part_parallel -Koptmsg=2 -Kprefetch_conditional -Kprefetch_strong -Kreduction -Ksimd=2 -Kstriping -Kswp_strong
CC=mpiFCCpx -Kdynamic_iteration -Keval -Kfast,parallel -Klib -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Kocl -Kopenmp -Koptmsg=2 -Kreduction -Ksimd=2 -O3 -Krestp=all



a.out: main.c Makefile
	$(CC) main.c -o a.out


expnote.pdf: expnote.md
	pandoc expnote.md -o expnote-body.tex
	platex expnote.tex
	dvipdfmx expnote.dvi
