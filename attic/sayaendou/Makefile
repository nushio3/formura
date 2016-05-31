all: c.out f.out
# CC=mpiFCCpx -Kalias_const -Karray_private -Kdynamic_iteration -Keval -Kfast -Kinstance=8 -Klib -Kloop_fission -Kloop_part_parallel -Koptmsg=2 -Kprefetch_conditional -Kprefetch_strong -Kreduction -Ksimd=2 -Kstriping -Kswp_strong
#CC=mpiFCCpx  -Kfast,parallel -Kopenmp -Krestp=all
CC=mpiFCCpx -Kfast,parallel  -Kopenmp -Koptmsg=2 -Kreduction -Ksimd=2 -O3  -Krestp=all
FC=xpfrtpx -Cpp -Kfast,parallel  -Kopenmp -Koptmsg=2 -Kreduction -Ksimd=2 -O3 

c.out: main.c Makefile
	$(CC) main.c -o c.out
f.out: main.f90 Makefile
	$(FC) main.f90 -o f.out


expnote.pdf: expnote.md
	pandoc expnote.md -o expnote-body.tex
	platex expnote.tex
	dvipdfmx expnote.dvi
