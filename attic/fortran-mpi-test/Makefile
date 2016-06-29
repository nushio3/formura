all: a.out
FC=mpifrtpx -Cpp -Kfast,parallel  -Kopenmp -Koptmsg=2 -Kreduction -Ksimd=2 -O3
OBJS=./lib.o ./main.o
a.out: $(OBJS)
	$(FC) $(OBJS) -o a.out
./main.o: ./main.f90
	$(FC) -c $^ -o $@ 

./lib.o: ./lib.f90
	$(FC) -c $^ -o $@ 
# 
# ./finalist_header.o: ./finalist_header.f90
# 	$(FC) -c $^ -o $@ 2> $@.optmsg
# 
# ./finalist_internal_0.o: ./finalist_internal_0.f90
# 	$(FC) -c $^ -o $@ 2> $@.optmsg
# 
# ./finalist_internal_1.o: ./finalist_internal_1.f90
# 	$(FC) -c $^ -o $@ 2> $@.optmsg
