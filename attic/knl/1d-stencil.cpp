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


const int n_task = 1026;

typedef double *double_ptr;
typedef double task_ar[n_task];

void compute (task_ar aar, task_ar bar, int n_time, int n_task) {
  for (int t = 0; t < n_time; ++t) {
    for (int i = 1; i < n_task-1; ++i) {
      {
        const double l = aar[i-1];
        const double c = aar[i];
        const double r = aar[i+1];
        const double z1 = l*c*r;
        const double z2 = l*(1.0-c)*(1.0-r);
        const double z3 = (1.0-l)*(1.0-c)*(1.0-r);
        bar[i] = 1.0-z1-z2-z3;
      }
    }
    for (int i = 1; i < n_task-1; ++i) {
      {
        const double l = bar[i-1];
        const double c = bar[i];
        const double r = bar[i+1];
        const double z1 = l*c*r;
        const double z2 = l*(1.0-c)*(1.0-r);
        const double z3 = (1.0-l)*(1.0-c)*(1.0-r);
        aar[i] = 1.0-z1-z2-z3;
      }
    }
  }
}

int main () {
  const int n_thre = omp_get_max_threads();
  cout << n_thre << endl;

  vector<double_ptr> ptra;
  vector<double_ptr> ptrb;
  const int n_time = 1048576;

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
    int tid=omp_get_thread_num();
    compute(ptra[tid], ptrb[tid], n_time, n_task);
  }


  double time_end = wctime();
  double gflop = double(22)/1e9 * n_time * n_task * n_thre;

  double sum = 0;

  for (int i=0;i<n_thre;++i) {
    for (int x=0;x<n_task;++x) {
      sum += ptra[i][x];
    }
  }
  cout << sum << "\tGflop " << gflop << "\ttime " << (time_end - time_begin)
       << "\tGflops " << gflop/(time_end - time_begin)  << endl;

}
