#include "mpi.h"
#include <unistd.h>
#include <stdio.h>

void server(int tid, int n) {
  double x;
  for (int i = 0; i < 10; ++i) {
    sleep(1);
    x= 100 * i + tid;
    printf("send %lf\n", x);
    MPI_Send(&x, 1, MPI_DOUBLE, 0, 0, MPI_COMM_WORLD);

  }
}

void client(int tid, int n) {
  double x;
  MPI_Status status;
  for (int i = 0; i < 10*(n-1); ++i) {
    MPI_Recv(&x, 1, MPI_DOUBLE, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
    printf("received %lf from node %d\n", x, status.MPI_SOURCE);
  }
}


int main(int argc, char **argv)
{
  int myid, n_proc, i;
  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &n_proc);
  MPI_Comm_rank(MPI_COMM_WORLD, &myid);
  printf ("Hi, I'm process %d/%d\n", myid, n_proc);
  if(myid == 0)
    client(myid, n_proc);
  else
    server(myid, n_proc);
  MPI_Finalize();
}
