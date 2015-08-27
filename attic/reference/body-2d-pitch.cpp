string algorithm_tag_str = "PiTCH-16";

const int NT = 16;
const int NTO = NX/NT;
const int NF = NX/4;

double yuka[NTO][NTO][1][NT+2][NT+2];

const int N_KABE=NF+NT/2+2;
double yuka_tmp[1][NT+2][NT+2];
double kabe_y[NTO][NTO][N_KABE][2][NT+2];
double kabe_x[NTO][NTO][N_KABE][NT+2][2];


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

void solve(){
  int sim_t_1=-1, sim_t_2=-1;
  double wct_1=-1, wct_2=-1;


  for(int t_orig=-2*NX; t_orig <= T_FINAL; t_orig+=NF) {
    if(t_orig==0) {
      sim_t_1 = t_orig; wct_1 = second();
    }
    if(t_orig==T_FINAL-2*NX) {
      sim_t_2 = t_orig; wct_2 = second();
    }

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

  assert( sim_t_1 != -1 && sim_t_2 != -1 &&
          wct_1 != -1&& wct_2 != -1);

  benchmark_self_reported_wct = wct_2 - wct_1;
  benchmark_self_reported_delta_t = sim_t_2 - sim_t_1;
}
