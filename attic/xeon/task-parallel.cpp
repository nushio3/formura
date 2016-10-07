#include <cstdlib>
#include <iostream>
#include <vector>

#include <omp.h>
#include <hbwmalloc.h>

using namespace std;

double drand() {
  return double(rand()) / double(RAND_MAX);
}

typedef double *double_ptr;

int main () {
  const int n_thre = omp_get_max_threads();
  cout << n_thre << endl;
  
  vector<double_ptr> ptrs;
  const int n_task = 512;
  const int n_time = 1048576;

  for (int i=0;i<n_thre;++i) {
    ptrs.push_back((double*)hbw_malloc(sizeof(double) * n_task));
    for (int x=0;x<n_task;++x) {
      ptrs[i][x] = drand();
    }
  }

#pragma omp parallel
  {
    int tid=2*omp_get_thread_num();
    for (int t = 0; t < n_time; ++t) {
      for (int i = 0; i < n_task; ++i) {
	double x = ptrs[tid][i];
	ptrs[tid][i] = 3.99*x*(1-x);
      }
    }
  }

  double sum = 0;

  for (int i=0;i<n_thre;++i) {
    for (int x=0;x<n_task;++x) {
      sum += ptrs[i][x];
    }
  }
  cout << sum << endl;

}
