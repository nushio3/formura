#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "pearson-2d.h"

int T_MAX;
int mpi_my_rank;

extern Formura_Navigator navi;

float frand() {
  return rand() / float(RAND_MAX);
}

void init() {
  for(int x = navi.lower_x; x < navi.upper_x; ++x) {
    for(int y = navi.lower_y; y < navi.upper_y; ++y) {
      int x1 = x + navi.offset_x;
      int y1 = y + navi.offset_y;
      U[x][y] = 1;
      V[x][y] = 0;
    }
  }
  if(mpi_my_rank==0){
    for (int x = 18; x < 38; ++x) {
      for (int y = 58; y < 78; ++y) {
        U[x][y] = 0.5+0.01*frand();
        V[x][y] = 0.25+0.01*frand();
      }
    }
  }
}

int main (int argc, char **argv) {
  srand(time(NULL));
  MPI_Init(&argc, &argv);
  Formura_Init(&navi, MPI_COMM_WORLD);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_my_rank);

  if (argc <= 1) {
    T_MAX=10000;
  }else{
    sscanf(argv[1], "%d",  &T_MAX);
  }
  init();

  while(navi.time_step < T_MAX) {
    if(navi.time_step % 1000 == 0) {
      printf("t = %d\n", navi.time_step);
      char fn[256];
      sprintf(fn, "frames/%06d-%d.txt", navi.time_step, mpi_my_rank);
      FILE *fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          int x1 = x + navi.offset_x;
          int y1 = y + navi.offset_y;
          fprintf(fp, "%d %d %f\n", x1, y1, U[x][y]);
        }
        fprintf(fp, "\n");
      }
      fclose(fp);
    }
    Formura_Forward(&navi);
  }
  MPI_Finalize();
}
