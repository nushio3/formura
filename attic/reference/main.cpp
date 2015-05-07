#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <sys/time.h>


const int NX=1024, NY= 1024, N_TIME=1024;
const int X_MASK = NX-1, Y_MASK = NY-1;

const int NS=1;
const int NT=64;
const int NG=NT/NS/2; // 32
const int NTO=NX/NT; // 16
const int NF=NX/NT*NG; // 16*32 = 512

using namespace std;

double dens[NY][NX];
double dens_next[NY][NX];
double dens_std[NY][NX];
double dens_pitch[NY][NX];

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

double pad[NT+2*NS][NT+2*NS];

double yslabs[NTO][NTO][NF][NT][2] = {0};
double xslabs[NTO][NTO][NF][NT][2] = {0};
double sticks[NTO][NTO][NT][4] = {0};
double pads[NTO][NTO][NT+2*NS][NT+2*NS] = {0};

#define dens_at_pitch(y,x) pad[(y)][(x)]

void proceed_region
( double yslab[NF][NT][2],
  double xslab[NF][NT][2],
  double stick[NF][4],
  double yslab_next[NF][NT][2],
  double xslab_next[NF][NT][2],
  double stick_next[NF][4]
) {
  for(int t=0; t<NF; ++t){
    for (int i=0;i<NT;++i) {
      pad[i][NT] = yslab[t][i][0];
      pad[i][NT+1] = yslab[t][i][1];
      pad[NT][i] = xslab[t][i][0];
      pad[NT+1][i] = xslab[t][i][1];
    }
    pad[NT][NT]=stick[t][0];
    pad[NT][NT+1]=stick[t][1];
    pad[NT+1][NT]=stick[t][2];
    pad[NT+1][NT+1]=stick[t][3];

    for(int y=1;y<=NT;++y) {
      for(int x=1;x<=NT;++x) {
        pad[y-1][x-1] =
          0.5*dens_at_pitch(y,x);
        0.125*((dens_at_pitch(y,x-1)+dens_at_pitch(y,x+1))
               +(dens_at_pitch(y-1,x)+dens_at_pitch(y+1,x)));
      }
    }

    for (int i=0;i<NT;++i) {
      yslab_next[t][i][0] = pad[i][0]  ;
      yslab_next[t][i][1] = pad[i][1]  ;
      xslab_next[t][i][0] = pad[0][i]  ;
      xslab_next[t][i][1] = pad[1][i]  ;
    }
    stick[t][0] = pad[0][0];
    stick[t][1] = pad[0][1];
    stick[t][2] = pad[1][0];
    stick[t][3] = pad[1][1];
  }
}

void compute_pitch() {
  for (int large_t=0; large_t < N_TIME/NF; ++large_t) {
    for (int tile_y=0;tile_y<NTO; ++tile_y) {
      for (int tile_x=0;tile_x<NTO; ++tile_x) {
        proceed_region(yslabs[tile_y][tile_x], xslabs[tile_y][tile_x], sticks[tile_y][tile_x],
                       yslabs[tile_y][tile_x], xslabs[tile_y][tile_x], sticks[tile_y][tile_x]);
      }
    }
  }
}


int main(){
  cout << "yslabs " << (NTO)*(NTO)*(NF)*(NT)*(2) << endl;
  cout << "xslabs " << (NTO)*(NTO)*(NF)*(NT)*(2) << endl;
  cout << "sticks " << (NTO)*(NTO)*(NT)*(4) << endl;
  cout << "pads   " << (NTO)*(NTO)*(NT+2*NS)*(NT+2*NS) << endl;



  init();
  double wct0 = second();
  for(int t=0; t<N_TIME; ++t){
    proceed();
  }
  double wct1 = second();

  double flops = double(NX*NY)*NT*6.0/(wct1-wct0);
  cerr << flops << " FLOP/s" << endl;

  dump("test.txt");

  wct0 = second();
  compute_pitch();
  wct1 = second();

  flops = double(NX*NY)*NT*6.0/(wct1-wct0);
  cerr << flops << " FLOP/s" << endl;
  flops = double(N_TIME/NF)*NTO*NTO*NF*NT*NT*6.0/(wct1-wct0);
  cerr << flops << " FLOP/s" << endl;


}
