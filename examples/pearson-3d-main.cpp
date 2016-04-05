#include <math.h>
#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>

#include <fj_tool/fapp.h>
#include <fjcoll.h>

#include "pearson-3d.h"

int T_MAX;
int T_MONITOR;
int mpi_my_rank;
const double PI=3.14159265358979323846;

float frand() {
  return rand() / float(RAND_MAX);
}

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}


void init() {
  double wx = frand() * 2 * PI;
  double wy = frand() * 2 * PI;
  double wz = frand() * 2 * PI;
  for(int ix = navi.lower_x; ix < navi.upper_x; ++ix) {
    for(int iy = navi.lower_y; iy < navi.upper_y; ++iy) {
      for(int iz = navi.lower_z; iz < navi.upper_z; ++iz) {
        double k = (2*PI) / 128;
        double x = k * (navi.offset_x + ix);
        double y = k * (navi.offset_y + iy);
        double z = k * (navi.offset_z + iz);
        U[ix][iy][iz] = 1.0;
        V[ix][iy][iz] = 0.0;
        if (abs(cos(x+0.1*y+wx) * cos(y+0.1*z+wy) * cos(z+0.1*x+wz)) > 0.1) {
          U[ix][iy][iz] = 0.5;
          V[ix][iy][iz] = 0.25;
        }
      }
    }
  }
}

void write_monitor() {
  printf("#%d: t = %d\n", mpi_my_rank, navi.time_step);
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
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(U[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(V[x][y]+navi.lower_z, sizeof(double),z_size, fp);
  }
  {
    const int x=navi.lower_x + x_size/2;
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(U[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(V[x][y]+navi.lower_z, sizeof(double),z_size, fp);
  }
  fclose(fp);
}


int main (int argc, char **argv) {
  MPI_Init(&argc, &argv);
  Formura_Init(&navi, MPI_COMM_WORLD);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_my_rank);
  srand(time(NULL)+mpi_my_rank*65537);

  if (argc <= 1) {
    T_MAX=8192;
  }else{
    sscanf(argv[1], "%d",  &T_MAX);
  }
  if (argc <= 2) {
    T_MONITOR=8192;
  }else{
    sscanf(argv[2], "%d",  &T_MONITOR);
  }

  init();

  double t_begin = wctime(), t_end;

  int last_monitor_t = -T_MONITOR;
  for(;;){
    double t = wctime();
    bool monitor_flag = navi.time_step >= last_monitor_t + T_MONITOR;
    if(monitor_flag || navi.time_step <= 3 * T_MONITOR ) {
      printf("%d step @ %lf sec\n", navi.time_step, t-t_begin);
    }
    if(monitor_flag) {
      write_monitor();
    }
    if(monitor_flag) {
      last_monitor_t += T_MONITOR;
    }

    if (navi.time_step >= T_MAX) break;
    if (navi.time_step == 0) {
      t_begin = wctime();
      start_collection("main");
    }

    Formura_Forward(&navi); // navi.time_step increases
    MPI_Barrier(MPI_COMM_WORLD); // TODO: test the effect of synchronization


    if (navi.time_step >= T_MAX) {
      t_end = wctime();
      stop_collection("main");
    }
  }
  printf("wct = %lf sec\n",t_end - t_begin);

  MPI_Barrier(MPI_COMM_WORLD);
  MPI_Finalize();
}
