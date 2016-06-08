#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>
#include <stdio.h>
#include <fj_tool/fapp.h>
#include <fjcoll.h>

// L2 Cache = 6MB


#define NX 50
#define NY 50
#define NZ 50


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

void proceed(surface * U, surface * V, surface * U_next, surface * V_next) {
  const double rU = 1/86400.0, rV = 6/86400.0, rE = 1/900.0, Du = 2.3e-10, Dv = 6.1e-11;
  const double dt = 200, dx = 0.001;
    for (int x=1;x<NX-1;++x) {
      for (int y=1;y<NY-1;y+=2) {// NBU
        for (int z=1;z<NZ-1;++z) {
          double U0=U[x][y][z];
          double V0=V[x][y][z];
          double U0_1=U[x][y+1][z];
          double V0_1=V[x][y+1][z];
          double  eat = rE * U0 * V0*V0;
          double  eat_1 = rE * U0_1 * V0_1*V0_1;
          double dU_dt = - eat + rU * (1-U0) + Du/(dx*dx) * laplacian(U,x,y,z);
          double dV_dt =   eat - rV * V0     + Dv/(dx*dx) * laplacian(V,x,y,z);
          double dU_dt_1 = - eat_1 + rU * (1-U0_1) + Du/(dx*dx) * laplacian(U,x,y+1,z);
          double dV_dt_1 =   eat_1 - rV * V0_1     + Dv/(dx*dx) * laplacian(V,x,y+1,z);
          U_next[x][y][z] = U0 + dt * dU_dt;
          V_next[x][y][z] = V0 + dt * dV_dt;
          U_next[x][y+1][z] = U0_1 + dt * dU_dt_1;
          V_next[x][y+1][z] = V0_1 + dt * dV_dt_1;
        }
      }
    }
}

void proceed_nbux(){
  const double rU = 1/86400.0, rV = 6/86400.0, rE = 1/900.0, Du = 2.3e-10, Dv = 6.1e-11;
  const double dt = 200, dx = 0.001;

#pragma omp for collapse (2)
    for (int x=1;x<NX-1;x+=2) {//NBU
      for (int y=1;y<NY-1;++y) {
        for (int z=1;z<NZ-1;++z) {
          double U0=U_mem[x][y][z];
          double V0=V_mem[x][y][z];
          double U0_1=U_mem[x+1][y][z];
          double V0_1=V_mem[x+1][y][z];
          double  eat = rE * U0 * V0*V0;
          double  eat_1 = rE * U0_1 * V0_1*V0_1;
          double dU_dt = - eat + rU * (1-U0) + Du/(dx*dx) * laplacian(U_mem,x,y,z);
          double dV_dt =   eat - rV * V0     + Dv/(dx*dx) * laplacian(V_mem,x,y,z);
          double dU_dt_1 = - eat_1 + rU * (1-U0_1) + Du/(dx*dx) * laplacian(U_mem,x+1,y,z);
          double dV_dt_1 =   eat_1 - rV * V0_1     + Dv/(dx*dx) * laplacian(V_mem,x+1,y,z);
          U_mem2[x][y][z] = U0 + dt * dU_dt;
          V_mem2[x][y][z] = V0 + dt * dV_dt;
          U_mem2[x+1][y][z] = U0_1 + dt * dU_dt_1;
          V_mem2[x+1][y][z] = V0_1 + dt * dV_dt_1;
        }
      }
    }
}

void proceed_nbuxy(surface * U, surface * V, surface * U_next, surface * V_next) {
  const double rU = 1/86400.0, rV = 6/86400.0, rE = 1/900.0, Du = 2.3e-10, Dv = 6.1e-11;
  const double dt = 200, dx = 0.001;


  for (int x=1;x<NX-1;x+=2) {//NBU
    for (int y=1;y<NY-1;y+=2) {//NBU
      for (int z=1;z<NZ-1;++z) {
	double U0=U[x][y][z];
	double V0=V[x][y][z];
	double U0_2=U[x][y+1][z];
	double V0_2=V[x][y+1][z];
	double U0_1=U[x+1][y][z];
	double V0_1=V[x+1][y][z];
	double U0_3=U[x+1][y+1][z];
	double V0_3=V[x+1][y+1][z];
	double  eat = rE * U0 * V0*V0;
	double  eat_2 = rE * U0_2 * V0_2*V0_2;
	double  eat_1 = rE * U0_1 * V0_1*V0_1;
	double  eat_3 = rE * U0_3 * V0_3*V0_3;
	double dU_dt = - eat + rU * (1-U0) + Du/(dx*dx) * laplacian(U,x,y,z);
	double dV_dt =   eat - rV * V0     + Dv/(dx*dx) * laplacian(V,x,y,z);
	double dU_dt_2 = - eat_2 + rU * (1-U0_2) + Du/(dx*dx) * laplacian(U,x,y+1,z);
	double dV_dt_2 =   eat_2 - rV * V0_2     + Dv/(dx*dx) * laplacian(V,x,y+1,z);
	double dU_dt_1 = - eat_1 + rU * (1-U0_1) + Du/(dx*dx) * laplacian(U,x+1,y,z);
	double dV_dt_1 =   eat_1 - rV * V0_1     + Dv/(dx*dx) * laplacian(V,x+1,y,z);
	double dU_dt_3 = - eat_3 + rU * (1-U0_3) + Du/(dx*dx) * laplacian(U,x+1,y+1,z);
	double dV_dt_3 =   eat_3 - rV * V0_3     + Dv/(dx*dx) * laplacian(V,x+1,y+1,z);
	U_next[x][y][z] = U0 + dt * dU_dt;
	V_next[x][y][z] = V0 + dt * dV_dt;
	U_next[x][y+1][z] = U0_2 + dt * dU_dt_2;
	V_next[x][y+1][z] = V0_2 + dt * dV_dt_2;
	U_next[x+1][y][z] = U0_1 + dt * dU_dt_1;
	V_next[x+1][y][z] = V0_1 + dt * dV_dt_1;
	U_next[x+1][y+1][z] = U0_3 + dt * dU_dt_3;
	V_next[x+1][y+1][z] = V0_3 + dt * dV_dt_3;
      }
    }
  }
}

int main (int argc, char **argv) {

  init();
  start_collection("main");
  fapp_start("main", 0,0);

#pragma omp parallel
  {
    for(int t=0; t<8*1024;++t){
      proceed_nbux();
      proceed_nbux();
    }
  }
  
  fapp_stop("main", 0,0);
  stop_collection("main");

  for(int i=0;i<NX;++i)
    printf("%lf\n",V_mem[i][NY/2][NZ/2]);
}
