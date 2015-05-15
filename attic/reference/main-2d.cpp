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

const int NX=256, NY=NX;
int T_FINAL;

const int X_MASK = NX-1, Y_MASK=NY-1;

const int NT=32;
const int NTO=NX/NT;
const int NF=NX/4;


double dens_initial[NX][NX];
double dens_final[NX][NX];

double dens_final_pitch[NX][NX];

double yuka[NTO][NTO][1][NT+2][NT+2];


double yuka_tmp[1][NT+2][NT+2];
double kabe_y[NTO][NTO][NF+1][2][NT+2];
double kabe_x[NTO][NTO][NF+1][NT+2][2];

static double second(){
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return double(tv.tv_sec) + 1.e-6*double(tv.tv_usec);
}


void initialize() {
  for (int y=0; y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      dens_initial[y][x]=(rand()/double(INT_MAX)*2 > 1 ? 1 : 0);
      dens_final[y][x]=424242;
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


double ref_buf[NX][NX];
double ref_buf2[NX][NX];

void compute_reference() {
  for (int y=0;y<NY;++y) {
    for (int x=0;x<NX;++x) {
      ref_buf[y][x]=dens_initial[y][x];
    }
  }

  for (int t=1; t <=T_FINAL; ++t) {
    for (int y=0;y<NY;++y) {
      for (int x=0;x<NX;++x) {
        ref_buf2[y][x]=stencil_function
          (ref_buf[y][x],
           ref_buf[(y-1)&Y_MASK][x],
           ref_buf[(y+1)&Y_MASK][x],
           ref_buf[y][(x-1)&X_MASK],
           ref_buf[y][(x+1)&X_MASK]
           );
      }
    }
    swap(ref_buf, ref_buf2);
  }
  for (int y=0;y<NY;++y) {
    for (int x=0;x<NX;++x) {
      dens_final[y][x] = ref_buf[y][x];
    }
  }
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
        int y_dash = y;
        int x_dash = x;
        double ret=0;

        const bool in_region = t_dash >=0 && t_dash < NF+1;

        if (in_region) {
          if (t+t_orig>0 && y>=2 && x>=2) {
            asm volatile("#kernel");
            ret = stencil_function(buf[y-1][x-1],buf[y-2][x-1],buf[y][x-1],buf[y-1][x-2],buf[y-1][x]);
          }
          if (t_dash == 0) {
            ret = yuka_in[0][y_dash][x_dash];
          }
          if (y_dash < 2) {
            ret = kabe_y_in[t_dash][y_dash][x_dash];
          }
          if (x_dash < 2) {
            ret = kabe_x_in[t_dash][y_dash][x_dash];
          }
          if (t_k + t_orig == 0) {
            ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
          }

          buf2[y][x] = ret;

          if (t_dash == NF) {
            yuka_out[0][y_dash][x_dash] = ret;
          }
          if (y_dash >= NT) {
            kabe_y_out[t_dash][y_dash-NT][x_dash] = ret;
          }
          if (x_dash >= NT) {
            kabe_x_out[t_dash][y_dash][x_dash-NT] = ret;
          }
          if (t_k + t_orig == T_FINAL) {
            dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
          }
        }
      }
    }
    swap(buf, buf2);
  }
}

void compute_pitch(){
  for(int t_orig=-2*NX; t_orig <= T_FINAL; t_orig+=NF) {
    int y_orig = -t_orig;
    int x_orig = -t_orig;
    for (int yo=0;yo<NTO;++yo) {
      for (int xo=0;xo<NTO;++xo) {
        int dy = yo*NT, dx = xo*NT;
        pitch_kernel
          (t_orig+(dx+dy)/4,
           y_orig+(3*dy-dx)/4,
           x_orig+(3*dx-dy)/4,
           yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
           yuka_tmp,kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
        swap(yuka[yo][xo], yuka_tmp);
      }
    }
  }
}

int main ()
{
  double n_flop[2], wct_pitch[2], wct_ref[2];

  for(int part=0; part<2; ++part) {
    T_FINAL = NX*(2+part);
    initialize();
    n_flop[part]=6.0*NX*NX*double(T_FINAL);
    double t1 = second();
    compute_pitch();
    double t2 = second();
    cout << "PiTCH: " << n_flop[part] << " flop " << (t2-t1) << " second" << endl;
    wct_pitch[part] = t2-t1;

    swap(dens_final, dens_final_pitch);

    double t3 = second();
    compute_reference();
    double t4 = second();
    cout << "Ref: " << n_flop[part] << " flop " << (t4-t3) << " second" << endl;
    wct_ref[part] = t4-t3;
    for (int y=0;y<NY;++y) {
      for (int x=0;x<NX;++x){
        assert(dens_final[y][x]==dens_final_pitch[y][x]);
      }
    }
  }

  cerr << "PiTCH: " << (n_flop[1]-n_flop[0])/(wct_pitch[1]-wct_pitch[0]) << " flop/s " << endl;
  cerr << "Ref: " << (n_flop[1]-n_flop[0])/(wct_ref[1]-wct_ref[0]) << " flop/s " << endl;
}
