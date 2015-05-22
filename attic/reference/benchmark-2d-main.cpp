#include <algorithm>
#include <cassert>
#include <climits>
#include <cstdlib>
#include <sys/time.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sstream>
#include <omp.h>


using namespace std;

const int NX=1024;
const int NY=NX;
int T_FINAL;

const int X_MASK = NX-1, Y_MASK=NY-1;


double dens_initial[NX][NX];
double dens_final[NX][NX];

static double second()
{
  struct timeval tm;
  double t ;

  static int base_sec = 0,base_usec = 0;

  gettimeofday(&tm, NULL);

  if(base_sec == 0 && base_usec == 0)
    {
      base_sec = tm.tv_sec;
      base_usec = tm.tv_usec;
      t = 0.0;
  } else {
    t = (double) (tm.tv_sec-base_sec) +
      ((double) (tm.tv_usec-base_usec))/1.0e6 ;
  }
  return t ;
}


void initialize() {
  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      int p1=x, p2=y, fac=1, sum=0;
      int pat[4] = {0,1,2,-3};
      while(p1!=0 || p2!=0) {
        sum += fac * pat[(p1&1)*2+(p2&1)];
        fac *= 2;p1>>=1; p2>>=1;
      }
      dens_initial[y][x]=sum;
      dens_final[y][x]=0xdeadbeef;
    }
  }
}

void dump(const char* fn) {
  ofstream ofs(fn);
  for (int y=0; y<NY; ++y) {
    for(int x=0;x<NX;++x) {
      ofs << x << " " << y << " " << dens_final[y][x] << endl;
    }
    ofs << endl;
  }
}



inline double stencil_function(double o, double a, double b, double c, double d) {
  return 0.5*o+0.125*(a+b+c+d);
}

double benchmark_self_reported_wct;
int benchmark_self_reported_delta_t;

#include "body.cpp"

bool debug_mode = false;

int time_iteration_scaling;

void leave_dump () {
  ostringstream fn;
  fn << "gen/finalstate-nx-" << NX << "-S-" << time_iteration_scaling << "-" <<  algorithm_tag_str << ".txt";
  dump(fn.str().c_str());
}

int main (int argc, char** argv)
{
  if (debug_mode) {
    time_iteration_scaling = 1;
  } else {
    cerr << "calibrating..." << endl;
    for(time_iteration_scaling=1;;time_iteration_scaling*=2){
      initialize();
      double t1 = second();
      T_FINAL=NX*time_iteration_scaling;
      solve();
      double t2 = second();
      cerr << t2 << " " << t1 << endl;
      if (time_iteration_scaling==1) leave_dump();
      if(t2-t1>0.1) {
        if(t2-t1<10)
          time_iteration_scaling *= 3;
        else
          time_iteration_scaling *= 2;
        break;
      }
    }
  }
  cerr << "scale: " << time_iteration_scaling << endl;

  string benchmark_fn = string("") +
    "result/" +
    (argc>1 ? argv[1] : "") +
    "-benchmark.txt";

  ofstream fs_log(benchmark_fn.c_str(), ofstream::app | ofstream::out);

  int nth;

  #pragma omp parallel
  {
    #pragma omp master
    nth = omp_get_num_threads();
  }

  for(int iter=0;iter< (debug_mode ? 1 : 10);++iter) {
    ostringstream msg;
    msg <<
      algorithm_tag_str <<
      "\tNthre: " << nth <<
      "\tNX: " << NX << "\t"  ;
    T_FINAL = NX*time_iteration_scaling;
    initialize();
    solve();
    double n_flop=6.0*NX*NX*double(benchmark_self_reported_delta_t);
    double wct = benchmark_self_reported_wct;
    msg << n_flop << " flop\t" << wct << " second\t" ;
    msg << n_flop/wct << " flop/s";
    cerr << msg.str() << endl;
    fs_log << msg.str() << endl;
  }

  leave_dump();
}
