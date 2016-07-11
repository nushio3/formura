#include <algorithm>
#include <map>
#include <math.h>
#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>

#include <fj_tool/fapp.h>
#include <fjcoll.h>

using namespace std;

#include "pearson-3d-lap.h"

bool EXTEND_MISSION=false;
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
/*
  void init() {
  for(int ix = navi.lower_x; ix < navi.upper_x; ++ix) {
  for(int iy = navi.lower_y; iy < navi.upper_y; ++iy) {
  for(int iz = navi.lower_z; iz < navi.upper_z; ++iz) {
  double x = double(navi.offset_x + ix)/NX;
  double y = double(navi.offset_y + iy)/NY;
  double z = double(navi.offset_z + iz)/NZ;
  U[ix][iy][iz] = 1.0;
  V[ix][iy][iz] = 0.0;
  if (z > 0.49 && z < 0.51 && x > 0.4 && x < 0.6) {
  U[ix][iy][iz] = 0.5;
  V[ix][iy][iz] = 0.25;
  }
  }
  }
  }
  }*/


double gaussian(double x, double y,double z) {
  double d = sqrt(x*x+y*y+z*z);
  return 1.0/(1.0+exp( (d-3.0)*3.0 ));
}


typedef pair<int,pair<int,int> > Key;

void init() {
  if (NZ<500){
    const int NI=4,NJ=7;
    double oxs[NI*NJ], pat_x[NI] = {230,80, 40,170};
    double oys[NI*NJ], pat_y[NI] = {131,131,131,131};
    double ozs[NI*NJ], pat_z[NI] = { 50,80,120,190};
    for (int i=0;i<NI;++i) {
      for (int j=0;j<NJ;++j) {
        oxs[j*4+i] = pat_x[i] + 2.0 * j*(2*frand()-1);
        oys[j*4+i] = pat_y[i] + 2.0 * j*(2*frand()-1);
        ozs[j*4+i] = pat_z[i] + 2.0 * j*(2*frand()-1);
      }
    }

    for(int ix = navi.lower_x; ix < navi.upper_x; ++ix) {
      for(int iy = navi.lower_y; iy < navi.upper_y; ++iy) {
        for(int iz = navi.lower_z; iz < navi.upper_z; ++iz) {
          U[ix][iy][iz] = 1.0;
          V[ix][iy][iz] = 0.0;
          double g=0;
          for (int i=0;i<NI*NJ;++i) {
            double oz=ozs[i], oy=oys[i],ox=oxs[i];
            g += gaussian(iz-oz, ix-ox ,iy-oy);
          }
          if (g>=1.0) g=1.0;
          U[ix][iy][iz] -= 0.5 *g;
          V[ix][iy][iz] += 0.25 *g;

        }
      }
    }
  }else{
    map<Key ,double> seeds;
    for(int ix = navi.lower_x; ix < navi.upper_x; ++ix) {
      for(int iy = navi.lower_y; iy < navi.upper_y; ++iy) {
        for(int iz = navi.lower_z; iz < navi.upper_z; ++iz) {
          Key k (ix/16, pair<int,int>(iy/16, iz/16));
          U[ix][iy][iz] = 1.0;
          V[ix][iy][iz] = 0.0;
          double s = seeds[k];
          if (s==0) {
            s = frand();
            seeds[k]=s;
          }
          if (s < 0.1 ) {
            U[ix][iy][iz] = 0.5;
            V[ix][iy][iz] = 0.25;
          }
        }
      }
    }
  }
}
void write_monitor() {
  int global_position[6];
  global_position[0] = navi.offset_x + navi.lower_x;
  global_position[1] = navi.offset_y + navi.lower_y;
  global_position[2] = navi.offset_z + navi.lower_z;
  global_position[3] = navi.upper_x - navi.lower_x;
  global_position[4] = navi.upper_y - navi.lower_y;
  global_position[5] = navi.upper_z - navi.lower_z;
  int x_size = navi.upper_x - navi.lower_x;
  int y_size = navi.upper_y - navi.lower_y;
  int z_size = navi.upper_z - navi.lower_z;

  if (navi.offset_x + navi.lower_x == 0) {
    char fn[256];
    sprintf(fn, "out/monitorX-%06d-%d.txt", navi.time_step, mpi_my_rank);

    FILE *fp = fopen(fn,"wb");
    fwrite(global_position, sizeof(int), 6, fp);
    {
      const int x=navi.lower_x + x_size/2;
      for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(U[x][y]+navi.lower_z, sizeof(double),z_size, fp);
      for(int y = navi.lower_y; y < navi.upper_y; ++y) fwrite(V[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    }
    fclose(fp);
  }


  if (navi.offset_y + navi.lower_y == 0) {
    char fn[256];
    sprintf(fn, "out/monitorY-%06d-%d.txt", navi.time_step, mpi_my_rank);

    FILE *fp = fopen(fn,"wb");
    fwrite(global_position, sizeof(int), 6, fp);
    {
      const int y=navi.lower_y + y_size/2;
      for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(U[x][y]+navi.lower_z, sizeof(double),z_size, fp);
      for(int x = navi.lower_x; x < navi.upper_x; ++x) fwrite(V[x][y]+navi.lower_z, sizeof(double),z_size, fp);
    }
    fclose(fp);
  }

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
  if (argc >= 4) {
    EXTEND_MISSION = true;
  }

  init();

  double t_begin = wctime(), t_end;

  int last_monitor_t = -T_MONITOR;
  char benchmark_name[256];
  sprintf(benchmark_name,"main");
  for(;;){
    double t = wctime();
    bool monitor_flag = navi.time_step >= last_monitor_t + T_MONITOR;
    // if(monitor_flag || navi.time_step <= 3 * T_MONITOR ) {
    //   if(mpi_my_rank==0){
    //     //printf("marked %d step @ %lf sec\n", navi.time_step, t-t_begin);
    //   }
    // }
    if(monitor_flag) {
      write_monitor();
      if(mpi_my_rank==0){
        printf("monitor %d step @ %lf sec\n", navi.time_step, t-t_begin);
      }
    }
    if(monitor_flag) {
      last_monitor_t += T_MONITOR;
    }

    if (navi.time_step >= T_MAX) {
      if (EXTEND_MISSION){
        T_MAX*=2;
        T_MONITOR*=2;
        sprintf(benchmark_name,"extend-%d",T_MAX);
        start_collection(benchmark_name);
        fapp_start(benchmark_name, 0,0);
      }else{
        break;
      }

    }
    if (navi.time_step == 0) {
      t_begin = wctime();
      start_collection(benchmark_name);
      fapp_start(benchmark_name, 0,0);
    }

    Formura_Forward(&navi); // navi.time_step increases
    MPI_Barrier(MPI_COMM_WORLD); // TODO: test the effect of synchronization


    if (navi.time_step >= T_MAX) {
      t_end = wctime();
      stop_collection(benchmark_name);
      fapp_stop(benchmark_name, 0,0);
    }
  }
  //printf("total wct = %lf sec\n",t_end - t_begin);

  MPI_Barrier(MPI_COMM_WORLD);
  MPI_Finalize();
}
