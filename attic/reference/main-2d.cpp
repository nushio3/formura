#include <algorithm>
#include <cassert>
#include <climits>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sstream>

using namespace std;

const int NX=1024, NY=NX;
const int T_FINAL = 4096;

const int X_MASK = NX-1, Y_MASK=NY-1;

const int NT=64;
const int NTO=NX/NT;
const int NF=NX/2;


double dens_initial[NX][NX];
double dens_final[NX][NX];


inline double stencil_function(double o, double a, double b, double c, double d) {
  return (o+a+b+c+d)/5;
}


double buf[NT+2][NT+2];
double buf2[NT+2][NT+2];

void pitch_kernel
(int t_orig, int y_orig, int x_orig,
 double yuka_in[1][NT+2][NT+2], double kabe_y_in[NF+1][2][NT+2], double kabe_x_in[NF+1][NT+2][2],
 double yuka_out[1][NT+2][NT+2], double kabe_y_out[NF+1][2][NT+2], double kabe_x_out[NF+1][NT+2][2])
{
  for(int t=0; t<NF+NT/2+2;++t) {
    for(int y=0; y<NT+2; ++y) {
      for(int x=0; x<NT+2; ++x) {
        int t_k=t, y_k = y-t, x_k = x-t;
        int t_dash = (2*t_k-x_k-y_k)>>2;
        int y_dash = t_k + y_k;
        int x_dash = t_k + x_k;
        double ret=0;

        if (t+t_orig>0 && t_dash >=0 && t_dash < NF+1 && y>=2 && x>=2) {
          ret = stencil_function(buf[y-1][x-1],buf[y-2][x-1],buf[y][x-1],buf[y-1][x-2],buf[y-1][x]);
        }
        if (t_dash == 0) {
          ret = yuka_in[0][y_dash][x_dash];
        }
        if (y_dash < 2 && t_dash >=0 && t_dash < NF+1) {
          ret = kabe_y_in[t_dash][y_dash][x_dash];
        }
        if (x_dash < 2 && t_dash >=0 && t_dash < NF+1) {
          ret = kabe_x_in[t_dash][y_dash][x_dash];
        }
        if (t_k + t_orig == 0) {
          ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
        }

        buf2[y][x] = ret;

        if (t_dash == NF) {
          yuka_out[0][y_dash][x_dash] = ret;
        }
        if (t_dash>=0 && t_dash <NF+1 && y_dash >= NT) {
          kabe_x_out[t_dash][y_dash-NT][x_dash] = ret;
        }
        if (t_dash>=0 && t_dash <NF+1 && x_dash >= NT) {
          kabe_x_out[t_dash][y_dash][x_dash-NT] = ret;
        }
        if (t_k + t_orig == T_FINAL  && t_dash>=0 && t_dash <NF+1) {
          dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
        }
      }
      swap(buf, buf2);
    }
  }
}


void compute_pitch(){
  int kabe_ctr=0, yuka_ctr=0;

  for(int t_orig=-2*NX; t_orig <= T_FINAL; t_orig+=NT/2) {
    int x_orig = t_orig & X_MASK;
    int kabe_ctr_w=(kabe_ctr+1)%NTO;
    int yuka_ctr_w=(yuka_ctr+NTO)%(NTO+1);

    //pitch_kernel(t_orig, x_orig, kabe[kabe_ctr], yuka[yuka_ctr], kabe[kabe_ctr_w], yuka[yuka_ctr_w]);

    kabe_ctr=(kabe_ctr+1)%NTO;
    yuka_ctr=(yuka_ctr+1)%(NTO+1);
  }
}

int main ()
{

}
