#include <cstdlib>
#include <iostream>
#include <vector>
#include <sys/time.h>

#include <omp.h>
#include <hbwmalloc.h>

using namespace std;

double drand() {
  return double(rand()) / double(RAND_MAX);
}


double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}


const int n_task = 2048;
const int n_time = 16384;
const int n_unroll=16;
const int n_sode = 0;

typedef double *double_ptr;
typedef double task_ar[n_task + 2 * n_sode];



void compute (task_ar aar, task_ar bar, task_ar lar, task_ar rar,int n_time, int n_task) {
  for (int t = 0; t < n_time; ++t) {
    for (int i = n_sode; i < n_task+n_sode; ++i) {

      double l = aar[i-1];
      double c = aar[i];
      double r = aar[i+1];

#pragma unroll(4)
#pragma simd
      for (int u=0;u<n_unroll;++u) {
	c = 0.2*l+0.4*c+0.3*r+0.1;
	l = 0.4*l+0.3*c+0.2*r+0.1;
	r = 0.3*l+0.2*c+0.4*r+0.1;
      }
      bar[i] = c;

    }

    for (int i = 1; i < n_task-1; ++i) {

      double l = bar[i-1];
      double c = bar[i];
      double r = bar[i+1];
#pragma unroll(4)
#pragma simd
      for (int u=0;u<n_unroll;++u) {
	c = 0.2*l+0.4*c+0.3*r+0.1;
	l = 0.4*l+0.3*c+0.2*r+0.1;
	r = 0.3*l+0.2*c+0.4*r+0.1;
      }
      aar[i] = c;
    }

#pragma simd
    for (int i=0;i<n_sode;++i) {
      lar[n_task+n_sode+i] = aar[n_sode+i];
    }
#pragma simd
    for (int i=0;i<n_sode;++i) {
      rar[i] = aar[n_task+i];
    }
    //#pragma omp barrier
  }
}

int main () {
  const int n_thre = omp_get_max_threads();


  vector<double_ptr> ptra;
  vector<double_ptr> ptrb;


  for (int i=0;i<n_thre;++i) {
    ptra.push_back((double*)hbw_malloc(sizeof(double) * n_task));
    ptrb.push_back((double*)hbw_malloc(sizeof(double) * n_task));
    for (int x=0;x<n_task;++x) {
      ptra[i][x] = drand();
      ptrb[i][x] = drand();
    }
  }

  double time_begin = wctime();

#pragma omp parallel
  {
    const int tid=omp_get_thread_num();
    const int ltid = ((tid-1)%n_thre + n_thre) %n_thre;
    const int rtid = ((tid+1)%n_thre + n_thre) %n_thre;
    compute(ptra[tid], ptrb[tid], ptra[ltid], ptra[rtid], n_time, n_task);
  }


  double time_end = wctime();
  double gflop = double(36)/1e9 * n_time * n_task * n_unroll * n_thre;

  double sum = 0;

  for (int i=0;i<n_thre;++i) {
    for (int x=0;x<n_task;++x) {
      sum += ptra[i][x];
    }
  }
  sum /= (n_thre * n_task);
  cout << "\tnthre " << n_thre;
  cout << "\tB/flop " << (8 * 8) / double(36 * n_unroll) 
       << "\tGflops " << gflop/(time_end - time_begin)  
       << "\tGflop " << gflop << "\ttime " << (time_end - time_begin)
       << "\tchecksum " << sum <<endl;

}
