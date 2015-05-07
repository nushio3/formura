#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <sys/time.h>


using namespace std;

#include "params.h"

double dens[NY][NX];
double dens_next[NY][NX];
double dens_std[NY][NX];
double dens_pitch[NY][NX];

char virgin[N_TIME][NY][NX] = {0};


double yslabs[NTO][NTO][N_SLAB][NT][2] = {0};
double xslabs[NTO][NTO][N_SLAB][NT][2] = {0};
double sticks[NTO][NTO][N_STICK][4] = {0};
double pads[NTO][NTO][NT][NT] = {0};

long ctr = 0;

void proceed_region
( int orig_t,
  int orig_y,
  int orig_x,
  double yslab[N_SLAB][NT][2],
  double xslab[N_SLAB][NT][2],
  double stick[N_STICK][4],
  double pad_input[NT][NT],
  double yslab_next[NF][NT][2],
  double xslab_next[N_SLAB][NT][2],
  double stick_next[N_SLAB][4],
  double pad_next[N_STICK][NT]
  );


/*
double second()
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
}*/

static double second(){
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return double(tv.tv_sec) + 1.e-6*double(tv.tv_usec);
}



void init() {
  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      int p1=x, p2=y, fac=1, sum=0;
      int pat[4] = {0,1,2,-3};
      while(p1!=0 || p2!=0) {
        sum += fac * pat[(p1&1)*2+(p2&1)];
        fac *= 2;p1>>=1; p2>>=1;
      }
      dens[y][x]=sum;
    }
  }
}

void dump(const char *fn) {
  ofstream ofs(fn);
  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      ofs << x << " " << y << " " << dens[y][x] << endl;
    }
    ofs << endl;
  }
}

#define dens_at(y,x) dens[(y)&Y_MASK][(x)&X_MASK]


void proceed(){
  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      dens_next[y][x]=0.5*dens[y][x]+
        0.125*((dens_at(y,x-1)+dens_at(y,x+1))
               +(dens_at(y-1,x)+dens_at(y+1,x)));
    }
  }
  swap(dens, dens_next);
}

void compute_pitch() {
  for (int large_t=-10; large_t <= N_TIME/NF+10; ++large_t) {
    for (int y5=NTO-1;y5>=0; --y5) {
      for (int x5=NTO-1;x5>=0; --x5) {
        int x4=(x5-1) & NTO;
        int y4=(y5-1) & NTO;
        proceed_region
          (NF*large_t - NG*(x5 + y5),
           (NT*large_t + NT*y5) & Y_MASK,
           (NT*large_t + NT*x5) & X_MASK,
           yslabs[y5][x5], xslabs[y5][x5], sticks[y5][x5],pads[y5][x5],
           yslabs[y4][x5], xslabs[y5][x4], sticks[y4][x4],pads[y5][x5]);
      }
    }
  }
  swap(dens, dens_next);
}


int main(){
  cout << "yslabs " << (NTO)*(NTO)*(NF)*(NT)*(2) << endl;
  cout << "xslabs " << (NTO)*(NTO)*(NF)*(NT)*(2) << endl;
  cout << "sticks " << (NTO)*(NTO)*(NT)*(4) << endl;
  cout << "pads   " << (NTO)*(NTO)*(NT+2*NS)*(NT+2*NS) << endl;

  double wct0, wct1, flops;


  init();
  wct0 = second();
  for(int t=0; t<N_TIME; ++t){
    proceed();
  }
  wct1 = second();
  cerr << (wct1-wct0) << " sec" << endl;

  flops = double(NX*NY)*N_TIME*6.0/(wct1-wct0);
  cerr << flops << " FLOP/s" << endl;

  dump("test.txt");

  init();

  wct0 = second();
  compute_pitch();
  wct1 = second();
  cerr << (wct1-wct0) << " sec" << endl;
  flops = double(NX*NY)*N_TIME*6.0/(wct1-wct0);
  cerr << flops << " FLOP/s" << endl;
  double superficial_cnt = double(N_TIME/NF+1)*double(NTO*NTO)*double((NF+NG)*NT*NT);
  flops = superficial_cnt*6.0/(wct1-wct0);
  cerr << flops << " FLOP/s" << endl;

  cerr << "ctr: " << ctr << " " << superficial_cnt << endl;

  init();
  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      dens[y][x] = pads[y/NT][x/NT][y&T_MASK][x&T_MASK];
    }
  }
  dump("test-pitch.txt");

  {
    int cntr=0;
    ofstream ofs("thru.txt");
    for (int t=0; t< N_TIME;++t) {
      for (int y=0;y<NY; ++y) {
        for (int x=0; x<NX; ++x) {
          if(virgin[t][y][x]==0) {
            ofs << x << " " << y << " " << t << endl;
            cntr++;
          }
          if(cntr>1e6) return 0;
        }
      }
    }
  }
}
