#include <iostream>
#include <sys/time.h>

using namespace std;

const int NN =1073741824;
//const int NN =1048576;
const int fac = 1;

int a[NN], b[NN];

int N;

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}



int main (int argc, char **argv) {
  double time_begin, time_end;


  for (N=1024;N<NN; N*=2) {
#pragma omp parallel
    {
      for (int i=0;i<N;++i) {
	a[i]=i;
      }
    
#pragma omp master
      {
	time_begin=wctime();
      }

      for (int t=0;t<NN/N*fac;++t) {
#pragma omp for nowait
	for (int i=0;i<N;++i) {
	  a[i]=b[i];
	}
#pragma omp for nowait
	for (int i=0;i<N;++i) {
	  b[i]=a[i];
	}
      }
#pragma omp master
      {
	time_end=wctime();
	double gb = double(fac)*NN*4/1e9;
	double time_elapse=time_end - time_begin;

	cout << N << " " << a[N/2] << " gbps: " << gb/time_elapse << endl;
      }
    }
  }
}
