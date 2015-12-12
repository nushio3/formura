#include "mpi.h"
#include <stdio.h>

int main(int argc, char **argv)
{
  int n, myid, n_proc, i;
  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &n_proc);
  MPI_Comm_rank(MPI_COMM_WORLD, &myid);
  printf ("Hi, I'm process %d/%d", myid, n_proc);
  MPI_Finalize();
}
