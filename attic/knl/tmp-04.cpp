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


const int n_task =2048;
const int n_time = 8192;

typedef double *double_ptr;
typedef double task_ar[n_task];

void compute (task_ar aar, task_ar bar, int n_time, int n_task) {
  const int t_unroll=4;
  for (int t = 0; t < n_time; t+=t_unroll) {
    for(int t2=0;t2<t_unroll; ++t2) {
      for (int i = 1; i < n_task-1; ++i) {

        double l = aar[i-1];
        double c = aar[i];
        double r = aar[i+1];
	c = 0.2*l+0.4*c+0.3*r+0.1;
	l = 0.4*l+0.3*c+0.2*r+0.1;
	r = 0.3*l+0.2*c+0.4*r+0.1;
	c = 0.2*l+0.4*c+0.3*r+0.1;
	l = 0.4*l+0.3*c+0.2*r+0.1;
	r = 0.3*l+0.2*c+0.4*r+0.1;
	c = 0.2*l+0.4*c+0.3*r+0.1;
	l = 0.4*l+0.3*c+0.2*r+0.1;
	r = 0.3*l+0.2*c+0.4*r+0.1;
        bar[i] = c;

      }

      for (int i = 1; i < n_task-1; ++i) {

	double l = bar[i-1];
	double c = bar[i];
	double r = bar[i+1];
	c = 0.2*l+0.4*c+0.3*r+0.1;
	l = 0.4*l+0.3*c+0.2*r+0.1;
	r = 0.3*l+0.2*c+0.4*r+0.1;
	c = 0.2*l+0.4*c+0.3*r+0.1;
	l = 0.4*l+0.3*c+0.2*r+0.1;
	r = 0.3*l+0.2*c+0.4*r+0.1;
	c = 0.2*l+0.4*c+0.3*r+0.1;
	l = 0.4*l+0.3*c+0.2*r+0.1;
	r = 0.3*l+0.2*c+0.4*r+0.1;
        aar[i] = c;

      }
    }

#pragma omp barrier


  }

}

int main () {
    const int n_thre = omp_get_max_threads();
    cout << "n_thre " <<  n_thre << " " <<flush;

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
    int tid=omp_get_thread_num();
    compute(ptra[tid], ptrb[tid], n_time, n_task);
  }


    double time_end = wctime();
    double gflop = double(108)/1e9 * n_time * n_task * n_thre;

    double sum = 0;

    for (int i=0;i<n_thre;++i) {
    for (int x=0;x<n_task;++x) {
    sum += ptra[i][x];
  }
  }
    cout << sum << "\tGflop " << gflop << "\ttime " << (time_end - time_begin)
	 << "\tGflops " << gflop/(time_end - time_begin)  << " n_barrier " << n_time << endl;

  }

