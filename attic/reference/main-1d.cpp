#include <algorithm>
#include <cassert>
#include <climits>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sstream>

using namespace std;

const int NX=1024;
const int T_FINAL = 4096;

const int X_MASK = NX-1;

const int NT=64;
const int NTO=NX/NT;
const int NF=NX/2;

double dens_initial[NX];
double dens_final[NX];
double kabe[NTO][NF+1][2];
double yuka[NTO+1][1][NT+2];


void initialize() {
  for (int x=0; x<NX; ++x) {
    dens_initial[x]=(rand()/double(INT_MAX)*2 > 1 ? 1 : 0);
  }
}

void dump(const char* fn) {
  ofstream ofs(fn);
  for(int x=0;x<NX;++x){
    ofs << x << " " << dens_final[x] << endl;
  }
}


inline double stencil_function(double a, double b, double c) {
  return b+c-b*c-a*b*c;
}

double ref_buf[NX];
double ref_buf2[NX];
void compute_reference() {
  for (int x=0;x<NX;++x) {
    ref_buf[x]=dens_initial[x];
  }

  for (int t=1; t <=T_FINAL; ++t) {
    for (int x=0;x<NX;++x) {
      ref_buf2[x]=stencil_function
        (ref_buf[(x-1)&X_MASK],ref_buf[x],ref_buf[(x+1)&X_MASK]);
    }
    swap(ref_buf, ref_buf2);
  }
  for (int x=0;x<NX;++x) {
    dens_final[x] = ref_buf[x];
  }

}

double buf[NT+2];  // double buffering
double buf2[NT+2]; // double buffering 2

void pitch_kernel
(int t_orig, int x_orig,
 double kabe_in[NF+1][2], double yuka_in[1][NT+2],
 double kabe_out[NF+1][2], double yuka_out[1][NT+2]) {
  for(int t=0; t<NF+NT/2+2;++t) {
    for(int x=0; x<NT+2; ++x) {
      int t_k=t, x_k = x-t;
      int t_dash = (t_k-x_k)>>1;
      int x_dash = t_k + x_k;
      double ret=0;

      if (t_dash>=0 && t_dash <NF+1) {

        if (x>=2 && t+t_orig>0) {
          ret = stencil_function(buf[x-2],buf[x-1],buf[x]);
        }
        if (t_dash == 0) {
          ret = yuka_in[0][x_dash];
        }
        if (x_dash < 2) {
          ret = kabe_in[t_dash][x];
        }
        if (t_k + t_orig == 0) {
          ret = dens_initial[(x_k+x_orig) & X_MASK];
        }

        buf2[x] = ret;

        if (t_dash == NF) {
          yuka_out[0][x_dash] = ret;
        }
        if (x_dash >= NT) {
          kabe_out[t_dash][x_dash-NT] = ret;
        }
        if (t_k + t_orig == T_FINAL) {
          dens_final[(x_k+x_orig) & X_MASK] = ret;
        }
      }
    }
    swap(buf, buf2);
  }
}

void compute_pitch(){
  int kabe_ctr=0, yuka_ctr=0;

  for(int t_orig=-2*NX; t_orig <= T_FINAL; t_orig+=NT/2) {
    int x_orig = t_orig & X_MASK;
    int kabe_ctr_w=(kabe_ctr+1)%NTO;
    int yuka_ctr_w=(yuka_ctr+NTO)%(NTO+1);

    pitch_kernel(t_orig, x_orig, kabe[kabe_ctr], yuka[yuka_ctr], kabe[kabe_ctr_w], yuka[yuka_ctr_w]);

    kabe_ctr=(kabe_ctr+1)%NTO;
    yuka_ctr=(yuka_ctr+1)%(NTO+1);
  }
}

int main ()
{
  initialize();
  compute_reference();
  dump("test-1d-ref.txt");
  compute_pitch();
  dump("test-1d-pitch.txt");
}
