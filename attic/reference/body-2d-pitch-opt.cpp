string algorithm_tag_str = "PiTCH-Opt-16";

const int NT = 16;
const int NTO = NX/NT;
const int NF = NX/4;

double yuka[NTO][NTO][1][NT+2][NT+2];

const int N_KABE=NF+NT/2+2;
double yuka_tmp[1][NT+2][NT+2];
double kabe_y[NTO][NTO][N_KABE][2][NT+2];
double kabe_x[NTO][NTO][N_KABE][NT+2][2];

double work[N_KABE][NT+2][NT+2];

template <bool near_initial, bool near_final>
void pitch_kernel
(int t_orig, int y_orig, int x_orig,
 double yuka_in[1][NT+2][NT+2], double kabe_y_in[N_KABE][2][NT+2], double kabe_x_in[N_KABE][NT+2][2],
 double yuka_out[1][NT+2][NT+2], double kabe_y_out[N_KABE][2][NT+2], double kabe_x_out[N_KABE][NT+2][2])
{
  for(int t=0; t<NF+NT/4+2;++t) {
    for(int y=0; y<NT+2; ++y) {
      work[t][y][0] = kabe_x_in[t+NT/4][y][0];
      work[t][y][1] = kabe_x_in[t+NT/4][y][1];
    }
    for(int x=0; x<NT+2; ++x) {
      work[t][0][x] = kabe_y_in[t+NT/4][0][x];
      work[t][1][x] = kabe_y_in[t+NT/4][1][x];
    }
  }

  // iter 1
  const int t_boundary_1 = NT/2+2;
  const int t_boundary_2 = NF+2;
  for(int t=1; t<t_boundary_1;++t) {
    for(int y=2; y<NT+2; ++y) {
      for(int x=2; x<NT+2; ++x) {
        int t_k=t, y_k = y-t, x_k = x-t;
        int t_dash = (2*t_k-x_k-y_k)>>2;
        const bool in_region = t_dash >=0 && t_dash < NF+1;

        if (in_region) {
          double ret=work[t][y][x];
          if (near_initial && t_k + t_orig == 0) {
            ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
          } else if (t_dash == 0) {
            ret = yuka_in[0][y][x];
          } else {
            asm volatile("#kernel");
            ret = stencil_function(work[t-1][y-1][x-1],work[t-1][y-2][x-1],work[t-1][y][x-1],work[t-1][y-1][x-2],work[t-1][y-1][x]);
          }

          work[t][y][x] = ret;

          if (near_final && t_k + t_orig == T_FINAL) {
            dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
          }
        }
      }
    }
  }

  // c.f. https://github.com/nitadori/Hermite/blob/master/SRC/v4df_util.h

  // iter 2
  for(int t=t_boundary_1; t<t_boundary_2;++t) {
    for(int y=2; y<NT+2; ++y) {
      for(int x=2; x<NT+2; ++x) {
        int t_k=t, y_k = y-t, x_k = x-t;

        double ret=work[t][y][x];
        if (near_initial &&t_k + t_orig == 0) {
          ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
        } else {
          asm volatile("#central kernel");
          ret = stencil_function(work[t-1][y-1][x-1],work[t-1][y-2][x-1],work[t-1][y][x-1],work[t-1][y-1][x-2],work[t-1][y-1][x]);
        }
        work[t][y][x] = ret;
        if (t_k + t_orig == T_FINAL && near_final) {
          dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
        }
      }
    }
  }


  // iter 3
  for(int t=t_boundary_2; t<NF+NT/2+2;++t) {
    for(int y=2; y<NT+2; ++y) {
      for(int x=2; x<NT+2; ++x) {
        int t_k=t, y_k = y-t, x_k = x-t;
        int t_dash = (2*t_k-x_k-y_k)>>2;
        const bool in_region = t_dash >=0 && t_dash < NF+1;

        if (in_region) {
          double ret=work[t][y][x];
          if (near_initial && t_k + t_orig == 0) {
            ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
          } else {
            asm volatile("#kernel");
            ret = stencil_function(work[t-1][y-1][x-1],work[t-1][y-2][x-1],work[t-1][y][x-1],work[t-1][y-1][x-2],work[t-1][y-1][x]);
          }

          work[t][y][x] = ret;

          if (t_dash == NF && t >=NF+2) {
            yuka_out[0][y][x] = ret;
          }
          if (near_final && t_k + t_orig == T_FINAL) {
            dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
          }
        }
      }
    }
  }


  for(int t=0; t<NF+NT/2+2;++t) {
    for(int x=0; x<NT+2; ++x) {
      kabe_y_out[t][0][x] = work[t][NT+0][x];
      kabe_y_out[t][1][x] = work[t][NT+1][x];
    }
    for(int y=0; y<NT+2; ++y) {
      kabe_x_out[t][y][0] = work[t][y][NT+0];
      kabe_x_out[t][y][1] = work[t][y][NT+1];
    }
  }


}

void solve(){

  int sim_t_1=-1, sim_t_2=-1;
  double wct_1=-1, wct_2=-1;

  for(int t_orig=-NX; t_orig <= T_FINAL; t_orig+=NF) {
    bool near_initial = t_orig < 0;
    bool near_final   = t_orig >= T_FINAL-NX;
    int y_orig = -t_orig;
    int x_orig = -t_orig;
    if(near_initial && near_final) {
      for (int yo=0;yo<NTO;++yo) {
        for (int xo=0;xo<NTO;++xo) {
          int dy = yo*NT, dx = xo*NT;

          pitch_kernel<true, true>
            (t_orig+(dx+dy)/4,
             y_orig+(3*dy-dx)/4,
             x_orig+(3*dx-dy)/4,
             yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
             yuka_tmp,kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
          swap(yuka[yo][xo], yuka_tmp);
        }
      }
    }else if(near_initial) {
      for (int yo=0;yo<NTO;++yo) {
        for (int xo=0;xo<NTO;++xo) {
          int dy = yo*NT, dx = xo*NT;
          pitch_kernel<true, false>
            (t_orig+(dx+dy)/4,
             y_orig+(3*dy-dx)/4,
             x_orig+(3*dx-dy)/4,
             yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
             yuka_tmp,kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
          swap(yuka[yo][xo], yuka_tmp);
        }
      }
      sim_t_1 = t_orig+NF;
      wct_1 = second();
    }else  if(near_final) {
      if (sim_t_2 == -1) {
        sim_t_2 = t_orig;
        wct_2 = second();
      }
      for (int yo=0;yo<NTO;++yo) {
        for (int xo=0;xo<NTO;++xo) {
          int dy = yo*NT, dx = xo*NT;
          pitch_kernel<false, true >
            (t_orig+(dx+dy)/4,
             y_orig+(3*dy-dx)/4,
             x_orig+(3*dx-dy)/4,
             yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
             yuka_tmp,kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
          swap(yuka[yo][xo], yuka_tmp);
        }
      }
    }else {
      for (int yo=0;yo<NTO;++yo) {
        for (int xo=0;xo<NTO;++xo) {
          int dy = yo*NT, dx = xo*NT;
          pitch_kernel<false, false>
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
  assert( sim_t_1 != -1 && sim_t_2 != -1 &&
          wct_1 != -1&& wct_2 != -1);

  benchmark_self_reported_wct = wct_2 - wct_1;
  benchmark_self_reported_delta_t = sim_t_2 - sim_t_1;
}
