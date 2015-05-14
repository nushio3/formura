#include <algorithm>
#include <cstdio>
#include <fstream>
#include <iostream>


using namespace std;

const int N_TIME = 1024, NY =256,NX =NY;
const int X_MASK = NX-1, Y_MASK = NY-1;

const int T_STEP = NX/4;
const int T_FIN = N_TIME-NX;
const int NT = 16;

double deadbeef=1e99;
double pat[N_TIME][NY+2][NX+2];
double init_state[NY][NX];
double fin_state[NY][NX];

void init() {
  for(int t=0;t<N_TIME;++t){
    for (int y=0;y<NY+2; ++y) {
      for (int x=0; x<NX+2; ++x) {
        pat[t][y][x]=deadbeef;
      }
    }
  }

  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      int p1=x, p2=y, fac=1, sum=0;
      int pat[4] = {0,1,2,-3};
      while(p1!=0 || p2!=0) {
        sum += fac * pat[(p1&1)*2+(p2&1)];
        fac *= 2;p1>>=1; p2>>=1;
      }
      init_state[y][x]=sum;
    }
  }
}

void dump(const char *fn) {
  ofstream ofs(fn);
  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      ofs << x << " " << y << " " << fin_state[y][x] << endl;
    }
    ofs << endl;
  }
}

#define dens_at(y,x) pat[t-1][(y)&Y_MASK][(x)&X_MASK]

void compute_ref() {

  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      pat[0][y][x]=init_state[y][x];
    }
  }

  for(int t=1;t<=T_FIN;++t){
    for (int y=0;y<NY; ++y) {
      for (int x=0; x<NX; ++x) {
        pat[t][y][x]=0.5*pat[t-1][y][x]+
        0.125*((dens_at(y,x-1)+dens_at(y,x+1))
               +(dens_at(y-1,x)+dens_at(y+1,x)));
      }
    }
  }

  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      fin_state[y][x]=pat[T_FIN][y][x];
    }
  }

}


void compute_pitch() {
  for(int to=0;to<N_TIME; to+=T_STEP) {
    if(to>0) { //periodic boundary condition.
      for(int t=to;t<to+T_STEP;++t) {
        for(int y=0;y<NY;++y) {
          pat[t][y][NX] = pat[t-T_STEP][y][0] ;
          pat[t][y][NX+1] = pat[t-T_STEP][y][1] ;
        }
      }
      for(int t=to;t<to+T_STEP;++t) {
        for(int x=0;x<NX+2;++x) {
          pat[t][NY][x] = pat[t-T_STEP][0][x] ;
          pat[t][NY+1][x] = pat[t-T_STEP][1][x] ;
        }
      }
    }

    for(int yo=NY-NT;yo>=0;yo-=NT) {
      for(int xo=NX-NT;xo>=0;xo-=NT) {
        for(int t=to;t<to+T_STEP;++t) {
          for(int y=yo+NT-4;y>=yo;y-=4) {
            for(int x=xo+NT-4;x>=xo;x-=4) {
              if(t+((x+y)%4-(x+y))<=0){
#include "gen-init.cpp"
              } else{
#include "gen.cpp"
              }
              if(t+((x+y)%4-(x+y))==T_FIN){
#include "gen-fin.cpp"
              }
            }
          }
        }
      }
    }
  }
}

int main () {
  init();
  compute_ref();
  dump("dash-ref.txt");

  init();
  compute_pitch();
  dump("dash-pitch.txt");
  return 0;
}
