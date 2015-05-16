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

static double second(){
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return double(tv.tv_sec) + 1.e-6*double(tv.tv_usec);
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
  for(int iter=0;iter<10;++iter) {
    cout << tag_str << " NX: " << NX << " " ;
    for(int part=0; part<2; ++part) {
      T_FINAL = NX*(3+part);
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


}
