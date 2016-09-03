#include <cmath>
#include <omp.h>
#include <iostream>
#include <sys/time.h>

using namespace std;

//const int NN =1073741824;
const int NX = 960, NY = 3;
const int NN =1048576, NZ=NN;
const int fac = 10;

const double Fu = 1.0/86400, Fv = 6.0/86400, Fe = 1.0/900, Du = 0.1*2.3e-9, Dv = 12.2e-11;
const double dt = 0*200, dx = 0.001;

double U[NX][NY][NN], V[NX][NY][NN];

int N;

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}

inline double periodic(double ar[NX][NY][NZ],int x, int y, int z) {
    x = ((x+100*NX)%NX+NX)%NX;
    y = ((y+100*NY)%NY+NY)%NY;
    z = ((z+100*NZ)%NZ+NZ)%NZ;
    //x = (x+NX)%NX;
    //y = (y+NY)%NY;
    //z = (z+NZ)%NZ;
  return ar[x][y][z];
}



int main (int argc, char **argv) {
  double time_begin, time_end;


  for (N=1024;N<NN; N*=2) {
#pragma omp parallel
    {
      for (int x=0;x<NX;++x) {
        for (int y=0;y<NY;++y) {
          for (int i=0;i<N;++i) {
            U[x][y][i]=1;
            V[x][y][i]=0.1+0.1*sin(x+y+i);
          }
        }
      }

#pragma omp master
      {
	time_begin=wctime();
      }
      const auto lap = [](double ar[NX][NY][NN],int x, int y, int z) {
	auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
	+ periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
	+ periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
	- 6*ar[x][y][z];
	return ret / dx / dx;
      };
      
      for (int t=0;t<NN/N*fac;++t) {
        const int x = 1+30*omp_get_thread_num();
        const int y = 1;
#pragma omp for nowait
        for (int z=0;z<N;++z) {
          auto u = U[x][y][z],  v = V[x][y][z];
          auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
          auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
          U[x][y][z] = U[x][y][z] + dt*du_dt;
          V[x][y][z] = V[x][y][z] + dt*dv_dt;
        }
      }
#pragma omp master
      {
	time_end=wctime();
	double gb = double(fac)*NN*29/1e9*omp_get_num_threads();
	double time_elapse=time_end - time_begin;

	cout << N << " " << U[1][1][N/2] << " flops: " << gb/time_elapse << endl;
      }
    }
  }
}
