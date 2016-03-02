#include <mpi.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "2d-mhd.h"

int T_MAX;
int T_MONITOR;
int mpi_my_rank;

const double PI = 3.141592653589793;

Formura_Navigator navi;

float frand() {
  return rand() / float(RAND_MAX);
}

void init() {
  for(int ix = navi.lower_x; ix < navi.upper_x; ++ix) {
    for(int iy = navi.lower_y; iy < navi.upper_y; ++iy) {
      double x = (navi.offset_x + ix)/(double)NX, y = (navi.offset_y + iy)/(double)NY;
      dens[ix][iy] = 0;
      vx[ix][iy]   = -sin(2 * PI * y);
      vy[ix][iy]   =  sin(2 * PI * x);
      vz[ix][iy]   = 0;
      Bx[ix][iy]   = -sin(2 * PI * y);
      By[ix][iy]   =  sin(4 * PI * x);
      Bz[ix][iy]   = 0;
      s[ix][iy]    = 0;
      Psi[ix][iy]    = 0;
    }
  }
}


int main (int argc, char **argv)
{
  srand(time(NULL));
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_my_rank);
  Formura_Init(&navi, MPI_COMM_WORLD);

  if (argc <= 1) {
    T_MAX=10000;
  }else{
    sscanf(argv[1], "%d",  &T_MAX);
  }
  if (argc <= 2) {
    T_MONITOR=1000;
  }else{
    sscanf(argv[2], "%d",  &T_MONITOR);
  }

  init();

  while(navi.time_step < T_MAX) {
    if(navi.time_step % T_MONITOR == 0) {
      printf("t = %d\n", navi.time_step);
      char fn[256];
      sprintf(fn, "out-2d-mhd/dens-%06d-%d.txt", navi.time_step, mpi_my_rank);
      FILE *fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          fprintf(fp, "%d %d %f %f %f\n", x, y, dens[x][y], s[x][y], Psi[x][y]);
        }
        fprintf(fp, "\n");
      }
      fclose(fp);


      sprintf(fn, "out-2d-mhd/v-%06d-%d.txt", navi.time_step, mpi_my_rank);
      fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          fprintf(fp, "%d %d %f %f %f\n", x, y, vx[x][y], vy[x][y], vz[x][y]);
        }
        fprintf(fp, "\n");
      }
      fclose(fp);

      sprintf(fn, "out-2d-mhd/B-%06d-%d.txt", navi.time_step, mpi_my_rank);
      fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          fprintf(fp, "%d %d %f %f %f\n", x, y, Bx[x][y], By[x][y], Bz[x][y]);
        }
        fprintf(fp, "\n");
      }
      fclose(fp);

    }
    Formura_Forward(&navi);
  }
  MPI_Finalize();
}
