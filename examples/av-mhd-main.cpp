#include <stdio.h>
#include <mpi.h>
#include "av-mhd.h"

const int T_MAX = 100;


Formura_Navigator navi;

int init() {
  printf("init\n");
  printf("init %d-%d\n",navi.lower_x, navi.upper_x);

  for(int x = navi.lower_x; x < navi.upper_x/2; ++x) {
    dens[x][0][0] = 1;
    vx[x][0][0] = 1;
  }
  for(int x = navi.upper_x/2; x < navi.upper_x; ++x) {
    dens[x][0][0] = 0.125;
    vx[x][0][0] = -1;
  }
}

int main (int argc, char **argv) {
  MPI_Init(&argc, &argv);
  Formura_Init(&navi, MPI_COMM_WORLD);
  init();
  while(navi.time_step < T_MAX) {
    printf("t = %d\n", navi.time_step);
    {
      char fn[256];
      sprintf(fn, "frames/av-%06d.txt", navi.time_step);
      FILE *fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        fprintf(fp, "%d %f\n", x, dens[x][0][0]);
      }
      fclose(fp);
    }
    Formura_Forward(&navi);
  }
  MPI_Finalize();
}
