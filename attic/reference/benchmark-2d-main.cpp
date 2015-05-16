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

#include "body.cpp"

int main ()
{
  double n_flop[2], wct[2];
  int good_scale;
  for(good_scale=1;;good_scale*=2){
    initialize();
    double t1 = second();
    T_FINAL=NX*good_scale;
    solve();
    double t2 = second();
    cerr << t2 << " " << t1 << endl;
    if(t2-t1>1) break;
  }
  cerr << good_scale << endl;

  for(int iter=0;iter<10;++iter) {
    cout << algorithm_tag_str << " NX: " << NX << " " ;
    for(int part=0; part<2; ++part) {
      T_FINAL = NX*(3+part)*good_scale;
      initialize();
      n_flop[part]=6.0*NX*NX*double(T_FINAL);
      double t1 = second();
      solve();
      double t2 = second();
      cout << n_flop[part] << " flop " << (t2-t1) << " second " ;
      wct[part] = t2-t1;
    }
    cout << (n_flop[1]-n_flop[0])/(wct[1]-wct[0]) << " flop/s" << endl;
  }
  ostringstream fn;
  fn << "gen/nx-" << NX << "-" << algorithm_tag_str << ".txt";
  dump(fn.str().c_str());

}
