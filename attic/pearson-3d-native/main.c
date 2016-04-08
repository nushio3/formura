#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>
#include <stdio.h>

#define N 100

typedef double array[N][N][N];

array  U, V, U_next, V_next;

double drand() {
  return rand() / (double)(RAND_MAX);
}

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}


void init() {
  for (int x=0;x<N;++x) {
    for (int y=0;y<N;++y) {
      for (int z=0;z<N;++z) {
        U[x][y][z] = 1.0;
        V[x][y][z] = 0.0;
        If (x*x+y*y+z*z<0.01*N*N) {
          U[x][y][z] = 0.5;
          V[x][y][z] = 0.25;
        }
      }
    }
  }
}



double laplacian(array A, int x, int y, int z) {
  return A[x+1][y][z] + A[x-1][y][z]
    +    A[x][y+1][z] + A[x][y-1][z]
    +    A[x][y][z+1] + A[x][y][z-1]
    - 6.0 * A[x][y][z];
}

int main (int argc, char **argv) {
  const double rU = 0.015, rV = 0.065, rE = 1.0, Du = 2e-5, Dv = 1e-5;
  const double dt = 0.1, dx = 0.01;
  double dU_dt, dV_dt;

  init();

  for (int x=1;x<N-1;++x) {
    for (int y=1;y<N-1;++y) {
      for (int z=1;z<N-1;++z) {
        double U0=U[x][y][z];
        double V0=V[x][y][z];
        dU_dt = -rE * U0 * V0*V0 + rU * (1-U0) + Du/(dx*dx) * laplacian(U,x,y,z);
        dV_dt =  rE * U0 * V0*V0 - rV * V0     + Dv/(dx*dx) * laplacian(V,x,y,z);
        U_next[x][y][z] = U0 + dt * dU_dt;
        V_next[x][y][z] = V0 + dt * dV_dt;
      }
    }
  }



}
