#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>
#include <stdio.h>
#include <fj_tool/fapp.h>
#include <fjcoll.h>

#define NX 64
#define NY 64
#define NZ 512


typedef double array[NX][NY][NZ];
typedef double surface[NY][NZ];

array  U_mem, V_mem;
array  U_mem2, V_mem2;

double drand() {
  return rand() / (double)(RAND_MAX);
}

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}


void init() {
  for (int x=0;x<NX;++x) {
    for (int y=0;y<NY;++y) {
      for (int z=0;z<NZ;++z) {
        U_mem[x][y][z] = 1.0;
        V_mem[x][y][z] = 0.0;
        U_mem2[x][y][z] = 1.0;
        V_mem2[x][y][z] = 0.0;
      }
    }
  }
  for (int x=NX/2;x<NX/2+16;++x) {
    for (int y=NY/2;y<NY/2+16;++y) {
      for (int z=NZ/2;z<NZ/2+16;++z) {
        U_mem[x][y][z] = 0.5;
        V_mem[x][y][z] = 0.25;
      }
    }
  }
}



#define laplacian(A,x,y,z)			\
  (A[x+1][y][z] + A[x-1][y][z]			\
  +    A[x][y+1][z] + A[x][y-1][z]		\
  +    A[x][y][z+1] + A[x][y][z-1]		\
  - 6.0 * A[x][y][z])


void swap(surface **a, surface **b) {
  surface *tmp=*b;*b=*a;*a=tmp;
}

int main (int argc, char **argv) {
  const double rU = 1/86400.0, rV = 6/86400.0, rE = 1/900.0, Du = 2.3e-10, Dv = 6.1e-11;
  const double dt = 200, dx = 0.001;
  double dU_dt, dV_dt;

  surface *U, *V, *U_next, *V_next;
  U=U_mem; U_next = U_mem2;
  V=V_mem; V_next = V_mem2;

  init();
  start_collection("main");
  fapp_start("main", 0,0);

  for(int t=0; t<256*16;++t){
    for (int x=1;x<NX-1;++x) {
      for (int y=1;y<NY-1;++y) {
        for (int z=1;z<NZ-1;++z) {
          double U0=U[x][y][z];
          double V0=V[x][y][z];
          dU_dt = -rE * U0 * V0*V0 + rU * (1-U0) + Du/(dx*dx) * laplacian(U,x,y,z);
          dV_dt =  rE * U0 * V0*V0 - rV * V0     + Dv/(dx*dx) * laplacian(V,x,y,z);
          U_next[x][y][z] = U0 + dt * dU_dt;
          V_next[x][y][z] = V0 + dt * dV_dt;
        }
      }
    }
    swap(&U,&U_next);
    swap(&V,&V_next);
  }
  fapp_stop("main", 0,0);
  stop_collection("main");

  for(int i=0;i<NX;++i)
    printf("%lf\n",V[i][NY/2][NZ/2]);
}
