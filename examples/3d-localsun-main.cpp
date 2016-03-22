#include <mpi.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include <fj_tool/fapp.h>
#include <fjcoll.h>

#include "3d-localsun.h"

int T_MAX;
int T_MONITOR;
int mpi_my_rank;

const double PI = 3.141592653589793;

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

void write_monitor() {
  printf("t = %d\n", navi.time_step);
  char fn[256];
  sprintf(fn, "out/monitor-%06d-%d.txt", navi.time_step, mpi_my_rank);
  FILE *fp = fopen(fn,"wb");
  int global_position[6];
  global_position[0] = navi.offset_x + navi.lower_x;
  global_position[1] = navi.offset_y + navi.lower_y;
  global_position[2] = navi.offset_z + navi.lower_z;
  global_position[3] = navi.upper_x - navi.lower_x;
  global_position[4] = navi.upper_y - navi.lower_y;
  global_position[5] = navi.upper_z - navi.lower_z;
  fwrite(global_position, sizeof(int), 6, fp);

  int x_size = navi.upper_x - navi.lower_x;
  int y_size = navi.upper_y - navi.lower_y;
  int z_size = navi.upper_z - navi.lower_z;
  {
    const int y=navi.lower_y + y_size/2;
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(dens[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(vx[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(vy[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(vz[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(Bx[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(By[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(Bz[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(s[x][y]+navi.lower_z, sizeof(double),z_size, fp);
  }
  {
    const int x=navi.lower_x + x_size/2;
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(dens[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(vx[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(vy[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(vz[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(Bx[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(By[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(Bz[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(s[x][y]+navi.lower_z, sizeof(double),z_size, fp);
  }
  fclose(fp);
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
      write_monitor();
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
