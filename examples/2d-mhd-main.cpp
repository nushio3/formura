#include <mpi.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "2d-mhd.h"

const int T_MAX=5000;

const int NX=600, NY=600;
const double PI = 3.141592653589793;

Formura_Navigator navi;

float frand() {
  return rand() / float(RAND_MAX);
}

void init() {
  for(int ix = navi.lower_x; ix < navi.upper_x; ++ix) {
    for(int iy = navi.lower_y; iy < navi.upper_y; ++iy) {
      double x = ix/(double)NX, y = iy/(double)NY;
      dens[ix][iy] = 1; // 0;
      vx[ix][iy]   = 0; // -sin(2 * PI * y);
      vy[ix][iy]   = 0; //  sin(2 * PI * x);
      vz[ix][iy]   = 0; // 0;
      Bx[ix][iy]   = 0; // -sin(2 * PI * y);
      By[ix][iy]   = 0; //  sin(4 * PI * x);
      Bz[ix][iy]   = 0; // 0;
      s[ix][iy]    = 0; // 0;
    }
  }
}



int main (int argc, char **argv)
{
  srand(time(NULL));
  MPI_Init(&argc, &argv);
  Formura_Init(&navi, MPI_COMM_WORLD);

  init();

  while(navi.time_step < T_MAX) {
    if(navi.time_step % 10 == 0) {
      printf("t = %d\n", navi.time_step);
      char fn[256];
      sprintf(fn, "out-2d-mhd/dens-%06d.txt", navi.time_step);
      FILE *fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          fprintf(fp, "%d %d %f\n", x, y, dens[x][y]);
        }
        fprintf(fp, "\n");
      }
      fclose(fp);


      sprintf(fn, "out-2d-mhd/vx-%06d.txt", navi.time_step);
      fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          fprintf(fp, "%d %d %f\n", x, y, vx[x][y]);
        }
        fprintf(fp, "\n");
      }
      fclose(fp);

    }
    Formura_Forward(&navi);
  }
  MPI_Finalize();
}
