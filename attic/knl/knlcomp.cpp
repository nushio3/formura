#include <hbwmalloc.h>
#include <iostream>
#include <sys/time.h>

using namespace std;

//const size_t NN =1073741824;
const size_t NN =128 * 1048576;
const size_t fac = 100;
const size_t NT = 256;

int N;

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}


double *a[NT];

int main (int argc, char **argv) {
  double time_begin, time_end;
  int * a = (int *)hbw_malloc(sizeof(int) * NN);
  int * b = (int *)hbw_malloc(sizeof(int) * NN);
    
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
#pragma omp for nowait

      for (int i=0;i<N;++i) {
	for (int t=0;t<NN/N*fac;++t) {
	  //a[i]=2*b[i];
	  //b[i]=a[i]/2;
	  a[i]=b[i];
	  b[i]=a[i];
	}
      }
#pragma omp master
      {
	time_end=wctime();
	double gb = double(fac)*NN*4/1e9;
	double time_elapse=time_end - time_begin;

	cout << N << " " << a[N/2] << " GBps: " << gb/time_elapse << endl;
      }
    }
  }
}
