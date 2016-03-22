#include <mpi.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include <fj_tool/fapp.h>
#include <fjcoll.h>


#include "3d-mhd.h"

int T_MAX;
int T_MONITOR;
int mpi_my_rank;

const double PI = 3.141592653589793;

Formura_Navigator navi;

float frand() {
  return rand() / float(RAND_MAX);
}

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}




void init() {
  for(int ix = navi.lower_x; ix < navi.upper_x; ++ix) {
    for(int iy = navi.lower_y; iy < navi.upper_y; ++iy) {
      for(int iz = navi.lower_z; iz < navi.upper_z; ++iz) {
        double x = (navi.offset_x + ix)/(double)NX;
        double y = (navi.offset_y + iy)/(double)NY;
        double z = (navi.offset_z + iz)/(double)NZ;
        dens[ix][iy][iz] = 0.1*sin(2*PI*z);
        vx[ix][iy][iz]   = -sin(2 * PI * y);
        vy[ix][iy][iz]   =  sin(2 * PI * x);
        vz[ix][iy][iz]   = 0;
        Bx[ix][iy][iz]   = -sin(2 * PI * y);
        By[ix][iy][iz]   =  sin(4 * PI * x);
        Bz[ix][iy][iz]   = 0;
        s[ix][iy][iz]    = 0;
        Psi[ix][iy][iz]  = 0;
      }
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
    T_MAX=100;
  }else{
    sscanf(argv[1], "%d",  &T_MAX);
  }
  if (argc <= 2) {
    T_MONITOR=100;
  }else{
    sscanf(argv[2], "%d",  &T_MONITOR);
  }

  init();

  double t_begin, t_end;

  for(;;){
    double t = wctime();
    if(navi.time_step % T_MONITOR == 0 || navi.time_step <= 3 * T_MONITOR ) {
      printf("%d step @ %lf sec\n", navi.time_step, t-t_begin);
    }
    if(navi.time_step % T_MONITOR == 0) {
      printf("t = %d\n", navi.time_step);
      char fn[256];
      sprintf(fn, "out/dens-%06d-%d.txt", navi.time_step, mpi_my_rank);
      FILE *fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          for(int z = navi.lower_z; z < navi.upper_z; ++z) {
            int gx = navi.offset_x + x;
            int gy = navi.offset_y + y;
            int gz = navi.offset_z + z;
            fprintf(fp, "%d %d %d %f %f %f\n", gx, gy, gz, dens[x][y][z], s[x][y][z], Psi[x][y][z]);
          }
        }
      }
      fclose(fp);

      sprintf(fn, "out/v-%06d-%d.txt", navi.time_step, mpi_my_rank);
      fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          for(int z = navi.lower_z; z < navi.upper_z; ++z) {
            int gx = navi.offset_x + x;
            int gy = navi.offset_y + y;
            int gz = navi.offset_z + z;
            fprintf(fp, "%d %d %d %f %f %f\n", gx, gy, gz, vx[x][y][z], vy[x][y][z], vz[x][y][z]);
          }
        }
      }
      fclose(fp);

      sprintf(fn, "out/B-%06d-%d.txt", navi.time_step, mpi_my_rank);
      fp = fopen(fn,"w");
      for(int x = navi.lower_x; x < navi.upper_x; ++x) {
        for(int y = navi.lower_y; y < navi.upper_y; ++y) {
          for(int z = navi.lower_z; z < navi.upper_z; ++z) {
            int gx = navi.offset_x + x;
            int gy = navi.offset_y + y;
            int gz = navi.offset_z + z;
            fprintf(fp, "%d %d %d %f %f %f\n", gx, gy, gz, Bx[x][y][z], By[x][y][z], Bz[x][y][z]);
          }
        }
      }
      fclose(fp);

    }

    if (navi.time_step >= T_MAX) break;
    if (navi.time_step == 0) {
      t_begin = wctime();
      start_collection("main");
    }

    Formura_Forward(&navi); // navi.time_step increases

    if (navi.time_step >= T_MAX) {
      t_end = wctime();
      stop_collection("main");
    }
  }
  printf("wct = %lf sec\n",t_end - t_begin);

  MPI_Barrier(MPI_COMM_WORLD);
  MPI_Finalize();


}

