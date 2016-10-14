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


const int n_task = 524288;
const int n_time = size_t(32768)* 1024
  /n_task ;

typedef double *double_ptr;
typedef double task_ar[n_task];

void compute (task_ar ar, int n_time, int n_task) {
  for (int t = 0; t < n_time; ++t) {
    for (int i = 0; i < n_task; ++i) {
      double x = ar[i];
      double y = 1.0 - ar[i];
      double z = x*y;
      x = 0.2*x+0.3*y+0.5*z;
      y = 0.3*x+0.5*y+0.2*z;
      z = 0.5*x+0.2*y+0.3*z;

      x = 0.2*x+0.3*y+0.5*z;
      y = 0.3*x+0.5*y+0.2*z;
      z = 0.5*x+0.2*y+0.3*z;

      x = 0.2*x+0.3*y+0.5*z;
      y = 0.3*x+0.5*y+0.2*z;
      z = 0.5*x+0.2*y+0.3*z;

      x = 0.2*x+0.3*y+0.5*z;
      y = 0.3*x+0.5*y+0.2*z;
      z = 0.5*x+0.2*y+0.3*z;

      x = 0.2*x+0.3*y+0.5*z;
      y = 0.3*x+0.5*y+0.2*z;
      z = 0.5*x+0.2*y+0.3*z;

      x = 0.2*x+0.3*y+0.5*z;
      y = 0.3*x+0.5*y+0.2*z;
      z = 0.5*x+0.2*y+0.3*z;
      ar[i] = x;
    }
  }  
}

int main () {
  const int n_thre = omp_get_max_threads();
  cout << "threads " << n_thre << " " << flush;
  
  vector<double_ptr> ptrs;

  for (int i=0;i<n_thre;++i) {
    ptrs.push_back((double*)hbw_malloc(sizeof(double) * n_task));
    for (int x=0;x<n_task;++x) {
      ptrs[i][x] = drand();
    }
  }

  double time_begin = wctime();

#pragma omp parallel
  {
    int tid=omp_get_thread_num();
    compute(ptrs[tid], n_time, n_task);
  }


  double time_end = wctime();
  double gflop = double(2 + 18 * 6)/1e9 * n_time * n_task * n_thre;

  double sum = 0;

  for (int i=0;i<n_thre;++i) {
    for (int x=0;x<n_task;++x) {
      sum += ptrs[i][x];
    }
  }
  cout << "\ttasksize "<< n_task  
       << "\tGflops " << gflop/(time_end - time_begin)  
       << "\tGflop " << gflop << "\ttime " << (time_end - time_begin) 
       << "\t" << sum 
       << endl;
}

