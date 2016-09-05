#include <iostream>
#include <sys/time.h>

using namespace std;

const int fac = 1;
const int nnx = 256;
const int nnxy = 65536;

const int NN =1073741824 + 2*nnxy;


double a[NN], b[NN];

int N;

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}



int main (int argc, char **argv) {
  double time_begin, time_end;



  for (N=1024;N<NN && N>0; N*=2) {
    if (N<0) break;
#pragma omp parallel
    {
      for (int i=0;i<NN;++i) {
	a[i]=i;
      }
    
#pragma omp master
      {
	time_begin=wctime();
      }

      for (int t=0;t<NN/N*fac;++t) {
#pragma omp for nowait
	for (int i=0;i<N;++i) {
	  a[i]=(b[i]+b[i+1]+b[i+2]+b[i+nnx]+b[i+2*nnx]+b[i+nnxy]+b[i+2*nnxy])/7.0;
	}
#pragma omp for nowait
	for (int i=0;i<N;++i) {
	  b[i]=a[i];
	}
      }
#pragma omp master
      {
	time_end=wctime();
	double gb = 8.0*8*double(fac)*NN/1e9;
	double time_elapse=time_end - time_begin;

	cout << N << " " << a[N/2] << " gbps: " << gb/time_elapse << endl;
      }
    }
  }
}
