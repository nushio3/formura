FC="mpifrtpx -Cpp -Kfast,parallel  -Kopenmp -Koptmsg=2 -Kreduction -Ksimd=2 -O3"

$FC -c library.f90
$FC -c main.f90
$FC -o main.out main.o library.o
