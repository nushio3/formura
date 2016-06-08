
mpiFCCpx -Kfast,parallel  -Kopenmp -Koptmsg=2 -Kreduction -Ksimd=2 -O3   -S main.c
grep ldx main.s | wc

