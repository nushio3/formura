#include <omp.h>
#include <algorithm>
string algorithm_tag_str = "PiTCH-SIMD";

typedef double v4df __attribute__((vector_size(32)));

const int NT = 64;
const int NTO = NX/NT;
const int NF = NX/4;

double yuka_hontai[NTO][NTO][1][NT+2][NT+2];
double yuka_next_hontai[NTO][NTO][1][NT+2][NT+2];

typedef double yuka_t [NT+2][NT+2];


yuka_t *yuka     [NTO][NTO]; //= yuka_hontai;
yuka_t *yuka_next[NTO][NTO];// = yuka_next_hontai;


const int N_KABE=NF+NT/2+2;
double kabe_y[NTO][NTO][N_KABE][2][NT+2];
double kabe_x[NTO][NTO][N_KABE][NT+2][2];

static __thread
double work[N_KABE][NT+2][NT+2];

int sim_t_1=-1, sim_t_2=-1;
double wct_1=-1, wct_2=-1;


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

  // iter 2
  if(!near_initial && !near_final) {
    for(int t=t_boundary_1; t<t_boundary_2;++t) {
      for(int y=2; y<NT+2; ++y) {
        for(int x=2; x<NT+2; x+=4) {

          asm volatile("#central kernel");
          const v4df imm05 = {0.5, 0.5, 0.5, 0.5};
          const v4df imm0125 = {0.125, 0.125, 0.125, 0.125};
          v4df *ret = (v4df*)&(work[t][y][x]);
          v4df *o = (v4df*)&(work[t-1][y-1][x-1] );
          v4df *a = (v4df*)&(work[t-1][y-2][x-1] );
          v4df *b = (v4df*)&(work[t-1][y][x-1]   );
          v4df *c = (v4df*)&(work[t-1][y-1][x-2] );
          v4df *d = (v4df*)&(work[t-1][y-1][x]   );

          *ret = imm05 * (*o) + imm0125 * (*a + *b + *c + *d);
        }
      }
    }

  } else {
    for(int t=t_boundary_1; t<t_boundary_2;++t) {
      for(int y=2; y<NT+2; ++y) {
        for(int x=2; x<NT+2; ++x) {
          int t_k=t, y_k = y-t, x_k = x-t;

          double ret=work[t][y][x];
          if (near_initial &&t_k + t_orig == 0) {
            ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
          } else {
            asm volatile("#kernel");
            ret = stencil_function(work[t-1][y-1][x-1],work[t-1][y-2][x-1],work[t-1][y][x-1],work[t-1][y-1][x-2],work[t-1][y-1][x]);
          }
          work[t][y][x] = ret;
          if (t_k + t_orig == T_FINAL && near_final) {
            dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
          }
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

int thread_local_t[NTO];
int thread_local_yo[NTO];
int thread_speed_flag[NTO];

int kabe_x_done[99999][NTO][NTO] = {{{0}}};
int kabe_y_done[99999][NTO][NTO] = {{{0}}};


void proceed_thread(int xo) {
  if (thread_speed_flag[xo] == 0) return;

  int yo = thread_local_yo[xo];
  int t_orig = thread_local_t[xo];
  int dy = yo*NT, dx = xo*NT;
  bool near_initial = t_orig < 0;
  bool near_final   = t_orig >= T_FINAL-NX;
  int y_orig = -t_orig;
  int x_orig = -t_orig;

  if(!near_initial) {
    assert(  kabe_x_done[NX+t_orig][yo][xo]);
    assert(  kabe_y_done[NX+t_orig][yo][xo]);
  }

  if(near_initial && near_final) {
    pitch_kernel<true, true>
      (t_orig+(dx+dy)/4,
       y_orig+(3*dy-dx)/4,
       x_orig+(3*dx-dy)/4,
       yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
       yuka_next[yo][xo],kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);

  }else if(near_initial) {
    pitch_kernel<true, false>
      (t_orig+(dx+dy)/4,
       y_orig+(3*dy-dx)/4,
       x_orig+(3*dx-dy)/4,
       yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
       yuka_next[yo][xo],kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
    sim_t_1 = t_orig+NF;
    wct_1 = second();
  }else  if(near_final) {
    if (sim_t_2 == -1) {
      sim_t_2 = t_orig;
      wct_2 = second();
    }
    int dy = yo*NT, dx = xo*NT;
    pitch_kernel<false, true >
      (t_orig+(dx+dy)/4,
       y_orig+(3*dy-dx)/4,
       x_orig+(3*dx-dy)/4,
       yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
       yuka_next[yo][xo],kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
  }else {
    int dy = yo*NT, dx = xo*NT;
    pitch_kernel<false, false>
      (t_orig+(dx+dy)/4,
       y_orig+(3*dy-dx)/4,
       x_orig+(3*dx-dy)/4,
       yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
       yuka_next[yo][xo],kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
  }
  swap(yuka[yo][xo], yuka_next[yo][xo]);

  kabe_x_done[NX+t_orig+NF][yo][(xo+1)%NTO]=1;
  kabe_y_done[NX+t_orig+NF][(yo+1)%NTO][xo]=1;



  if(thread_local_t[xo] <= T_FINAL) {
    thread_local_yo[xo]++;
    if(thread_local_yo[xo] >= NTO) {
      thread_local_yo[xo]=0;
      thread_local_t[xo] += NF;
    }
  } else {
    thread_speed_flag[xo] = 0;
  }
}

void solve(){

   sim_t_1=-1, sim_t_2=-1;
   wct_1=-1, wct_2=-1;


  for (int yo=0;yo<NTO;yo++) {
    for (int xo=0;xo<NTO;xo++) {
      yuka     [yo][xo] = yuka_hontai     [yo][xo];
      yuka_next[yo][xo] = yuka_next_hontai[yo][xo];
    }
  }

  for (int xo=0;xo<NTO;xo++) {
    thread_local_t[xo] = -NX;
    thread_local_yo[xo] = 0;
    thread_speed_flag[xo] = 1;
  }

  for(int yo=0;yo<NTO;yo++) {
    for (int xo=0;xo<NTO-yo-1;xo++) {
      proceed_thread(xo);
    }
  }

  #pragma omp parallel
  {
    for (;;){

      //int nth = omp_get_num_threads();
      //int tid = omp_get_thread_num();

      #pragma omp for
      for(int xo2=0;xo2<NTO;xo2++) {
        int xo = xo2;
        if(thread_speed_flag[xo]>0) {
          proceed_thread(xo);
        }
      }

      #pragma omp barrier

      bool flag=true;
      for(int xo=0;xo<NTO;xo++) {
        if(thread_speed_flag[xo]>0) flag=false;
      }
      if(flag) break;

    }
  }


  assert( sim_t_1 != -1 && sim_t_2 != -1 &&
          wct_1 != -1&& wct_2 != -1);

  benchmark_self_reported_wct = wct_2 - wct_1;
  benchmark_self_reported_delta_t = sim_t_2 - sim_t_1;

}
