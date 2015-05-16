#include <algorithm>
#include <cassert>
#include <climits>
#include <cstdlib>
#include <sys/time.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sstream>

using namespace std;

const int NX=256;
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

int main ()
{
  int good_scale;
  cerr << "calibrating..." << endl;
  for(good_scale=1;;good_scale*=2){
    initialize();
    double t1 = second();
    T_FINAL=NX*good_scale;
    solve();
    double t2 = second();
    cerr << t2 << " " << t1 << endl;
    if(t2-t1>1.0) break;
  }
  cerr << "scale: " << good_scale << endl;

  ofstream fs_log("result/benchmark.txt", ofstream::app | ofstream::out);

  for(int iter=0;iter<10;++iter) {
    ostringstream msg;
    msg << algorithm_tag_str << "\tNX: " << NX << "\t" ;
    T_FINAL = NX*3*good_scale;
    initialize();
    solve();
    double n_flop=6.0*NX*NX*double(benchmark_self_reported_delta_t);
    double wct = benchmark_self_reported_wct;
    msg << n_flop << " flop\t" << wct << " second\t" ;
    msg << n_flop/wct << " flop/s";
    cerr << msg.str() << endl;
    fs_log << msg.str() << endl;
  }
  ostringstream fn;
  fn << "gen/finalstate-nx-" << NX << "-" << algorithm_tag_str << ".txt";
  dump(fn.str().c_str());
}
