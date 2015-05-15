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

char virgin[N_TIME][NY][NX] = {{{0}}};
double answer[N_TIME][NY][NX] = {{{0}}};



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
  double yslab_next[N_SLAB][NT][2],
  double xslab_next[N_SLAB][NT][2],
  double stick_next[N_STICK][4],
  double pad_next[NT][NT]
  );


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
  for (int large_t=0; large_t <= N_TIME/NF; ++large_t) {
    for (int y5=NTO-1;y5>=0; --y5) {
      for (int x5=NTO-1;x5>=0; --x5) {
        int x4=(x5-1) & (NTO-1);
        int y4=(y5-1) & (NTO-1);
        int orig_t = NF*large_t; // - NG*(x5 + y5);
        int orig_x = (orig_t + NT*y5) & Y_MASK;
        int orig_y = (orig_t + NT*x5) & X_MASK;

        proceed_region
          (orig_t,orig_y,orig_x,
           yslabs[y5][x5], xslabs[y5][x5], sticks[y5][x5],pads[y5][x5],
           yslabs[y4][x5], xslabs[y5][x4], sticks[y4][x4],pads[y5][x5]);

        for(int t=0; t<NF+NG; ++t){
          int real_t = t + orig_t;

          if(real_t >=0 && real_t < N_TIME) {
            for(int y=0;y<NT;++y) {
              for(int x=0;x<NT;++x) {
                int real_y = (y+t+orig_y)&Y_MASK;
                int real_x = (x+t+orig_x)&X_MASK;
                //cout << "v" << real_t << " " << real_y << " " << real_x << endl;
                virgin[real_t][real_y][real_x] = 1;
              }
            }
          }
        }
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
  dump("t0.txt");
  wct0 = second();
  for(int t=0; t<N_TIME; ++t){
    for (int y=0;y<NY; ++y) {
      for (int x=0; x<NX; ++x) {
        answer[t][y][x]=dens[y][x];
      }
    }
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
          if(virgin[t][y][x]>1) {
            ofs << t << " " << y << " " << x << " " << virgin[t][y][x] << endl;
            cntr++;
          }
          if(cntr>1e6) return 0;
        }
      }
    }
  }
}
