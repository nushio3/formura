// compile with
// FCCpx -Kfast,openmp,simd,parallel,ocl benchmark-2d-fujitsu.cpp -Koptmsg=2 -Nlst_out=log -S -o benchmark-2d-fujitsu.s
#include <fjcoll.h>
#include <algorithm>
#include <cassert>
#include <climits>
#include <cstdlib>
#include <sys/time.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sstream>
#include <omp.h>



using namespace std;

const int NX=1024;
const int NY=NX;
int T_FINAL;

const int X_MASK = NX-1, Y_MASK=NY-1;

double dens_initial[NX][NX];
double dens_final[NX][NX];

static double second()
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


void initialize() {
  for (int y=0;y<NY; ++y) {
    for (int x=0; x<NX; ++x) {
      int p1=x, p2=y, fac=1, sum=0;
      int pat[4] = {0,1,2,-3};
      while(p1!=0 || p2!=0) {
        sum += fac * pat[(p1&1)*2+(p2&1)];
        fac *= 2;p1>>=1; p2>>=1;
      }
      dens_initial[y][x]=sum;
      dens_final[y][x]=0xdeadbeef;
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

double benchmark_self_reported_wct;
int benchmark_self_reported_delta_t;


#include <omp.h>
#include <algorithm>
string algorithm_tag_str = "PiTCH-SIMD";

const int NT = 32;
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

typedef double work_t[NT+2][NT+2];
typedef double work_slice_t[NT+2];
static __thread work_t work_hontai[2];



int sim_t_1=-1, sim_t_2=-1;
double wct_1=-1, wct_2=-1;


// template <bool near_initial, bool near_final>
void pitch_kernel
(int t_orig, int y_orig, int x_orig,
 double yuka_in[1][NT+2][NT+2], double kabe_y_in[N_KABE][2][NT+2], double kabe_x_in[N_KABE][NT+2][2],
 double yuka_out[1][NT+2][NT+2], double kabe_y_out[N_KABE][2][NT+2], double kabe_x_out[N_KABE][NT+2][2])
{
  const bool near_initial=false,  near_final=false;


  work_slice_t *work = work_hontai[0];
  work_slice_t *work_prev = work_hontai[1];

  // iter 1
  const int t_boundary_1 = NT/2+2;
  const int t_boundary_2 = NF+2;
  for(int t=1; t<t_boundary_1;++t) {
    swap(work,work_prev);
    for(int y=0; y<NT+2; ++y) {
      work[y][0] = kabe_x_in[t+NT/4][y][0];
      work[y][1] = kabe_x_in[t+NT/4][y][1];
    }
    for(int x=0; x<NT+2; ++x) {
      work[0][x] = kabe_y_in[t+NT/4][0][x];
      work[1][x] = kabe_y_in[t+NT/4][1][x];
    }

    for(int y=2; y<NT+2; ++y) {
      for(int x=2; x<NT+2; ++x) {
        int t_k=t, y_k = y-t, x_k = x-t;
        int t_dash = (2*t_k-x_k-y_k)>>2;
        const bool in_region = t_dash >=0 && t_dash < NF+1;

        if (in_region) {
          double ret=work[y][x];
          if (near_initial && t_k + t_orig == 0) {
            ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
          } else if (t_dash == 0) {
            ret = yuka_in[0][y][x];
          } else {
            asm volatile("#kernel");
            ret = stencil_function(work_prev[y-1][x-1],work_prev[y-2][x-1],work_prev[y][x-1],work_prev[y-1][x-2],work_prev[y-1][x]);
          }

          work[y][x] = ret;

          if (near_final && t_k + t_orig == T_FINAL) {
            dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
          }
        }
      }
    }
    for(int x=0; x<NT+2; ++x) {
      kabe_y_out[t][0][x] = work[NT+0][x];
      kabe_y_out[t][1][x] = work[NT+1][x];
    }
    for(int y=0; y<NT+2; ++y) {
      kabe_x_out[t][y][0] = work[y][NT+0];
      kabe_x_out[t][y][1] = work[y][NT+1];
    }
  }

  if(!near_initial && !near_final) {
    // iter 2-a
    for(int t=t_boundary_1; t<t_boundary_2;++t) {
      swap(work,work_prev);
      for(int y=0; y<NT+2; ++y) {
        work[y][0] = kabe_x_in[t+NT/4][y][0];
        work[y][1] = kabe_x_in[t+NT/4][y][1];
      }
      for(int x=0; x<NT+2; ++x) {
        work[0][x] = kabe_y_in[t+NT/4][0][x];
        work[1][x] = kabe_y_in[t+NT/4][1][x];
      }


      asm volatile("#central kernel begin");

      for(int y=2; y<NT+2; ++y) {
#pragma loop unroll
#pragma loop noalias
#pragma loop simd
        for(int x=2; x<NT+2; ++x) {
	  double ret = 0.5*work_prev[y-1][x-1]+0.125*
	    (work_prev[y-2][x-1]+work_prev[y][x-1]+work_prev[y-1][x-2]+work_prev[y-1][x]);
	  work[y][x] = ret;
	}
      }

      for(int x=0; x<NT+2; ++x) {
        kabe_y_out[t][0][x] = work[NT+0][x];
        kabe_y_out[t][1][x] = work[NT+1][x];
      }
      for(int y=0; y<NT+2; ++y) {
        kabe_x_out[t][y][0] = work[y][NT+0];
        kabe_x_out[t][y][1] = work[y][NT+1];
      }

    }

  } else {
    // iter 2-b
    for(int t=t_boundary_1; t<t_boundary_2;++t) {
      swap(work,work_prev);
      for(int y=0; y<NT+2; ++y) {
        work[y][0] = kabe_x_in[t+NT/4][y][0];
        work[y][1] = kabe_x_in[t+NT/4][y][1];
      }
      for(int x=0; x<NT+2; ++x) {
        work[0][x] = kabe_y_in[t+NT/4][0][x];
        work[1][x] = kabe_y_in[t+NT/4][1][x];
      }

      for(int y=2; y<NT+2; ++y) {
        for(int x=2; x<NT+2; ++x) {
          int t_k=t, y_k = y-t, x_k = x-t;

          double ret=work[y][x];
          if (near_initial &&t_k + t_orig == 0) {
            ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
          } else {
            asm volatile("#kernel");
            ret = stencil_function(work_prev[y-1][x-1],work_prev[y-2][x-1],work_prev[y][x-1],work_prev[y-1][x-2],work_prev[y-1][x]);
          }
          work[y][x] = ret;
          if (t_k + t_orig == T_FINAL && near_final) {
            dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
          }
        }
      }
      for(int x=0; x<NT+2; ++x) {
        kabe_y_out[t][0][x] = work[NT+0][x];
        kabe_y_out[t][1][x] = work[NT+1][x];
      }
      for(int y=0; y<NT+2; ++y) {
        kabe_x_out[t][y][0] = work[y][NT+0];
        kabe_x_out[t][y][1] = work[y][NT+1];
      }

    }
  }


  // iter 3
  for(int t=t_boundary_2; t<NF+NT/2+2;++t) {
    swap(work,work_prev);
    for(int y=0; y<NT+2; ++y) {
      work[y][0] = kabe_x_in[t+NT/4][y][0];
      work[y][1] = kabe_x_in[t+NT/4][y][1];
    }
    for(int x=0; x<NT+2; ++x) {
      work[0][x] = kabe_y_in[t+NT/4][0][x];
      work[1][x] = kabe_y_in[t+NT/4][1][x];
    }

    for(int y=2; y<NT+2; ++y) {
      for(int x=2; x<NT+2; ++x) {
        int t_k=t, y_k = y-t, x_k = x-t;
        int t_dash = (2*t_k-x_k-y_k)>>2;
        const bool in_region = t_dash >=0 && t_dash < NF+1;

        if (in_region) {
          double ret=work[y][x];
          if (near_initial && t_k + t_orig == 0) {
            ret = dens_initial[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK];
          } else {
            asm volatile("#kernel");
            ret = stencil_function(work_prev[y-1][x-1],work_prev[y-2][x-1],work_prev[y][x-1],work_prev[y-1][x-2],work_prev[y-1][x]);
          }

          work[y][x] = ret;

          if (t_dash == NF && t >=NF+2) {
            yuka_out[0][y][x] = ret;
          }
          if (near_final && t_k + t_orig == T_FINAL) {
            dens_final[(y_k+y_orig) & Y_MASK][(x_k+x_orig) & X_MASK] = ret;
          }
        }
      }
    }
    for(int x=0; x<NT+2; ++x) {
      kabe_y_out[t][0][x] = work[NT+0][x];
      kabe_y_out[t][1][x] = work[NT+1][x];
    }
    for(int y=0; y<NT+2; ++y) {
      kabe_x_out[t][y][0] = work[y][NT+0];
      kabe_x_out[t][y][1] = work[y][NT+1];
    }

  }




}

int thread_local_t[NTO];
int thread_local_yo[NTO];
int thread_speed_flag[NTO];

void proceed_thread(int xo) {
  if (thread_speed_flag[xo] == 0) return;

  int yo = thread_local_yo[xo];
  int t_orig = thread_local_t[xo];
  int dy = yo*NT, dx = xo*NT;
  bool near_initial = t_orig < 0;
  bool near_final   = t_orig >= T_FINAL-NX;
  int y_orig = -t_orig;
  int x_orig = -t_orig;

  if(near_initial && near_final) {
    pitch_kernel //<true, true>
      (t_orig+(dx+dy)/4,
       y_orig+(3*dy-dx)/4,
       x_orig+(3*dx-dy)/4,
       yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
       yuka_next[yo][xo],kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);

  }else if(near_initial) {
    pitch_kernel //<true, false>
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
    pitch_kernel //<false, true >
      (t_orig+(dx+dy)/4,
       y_orig+(3*dy-dx)/4,
       x_orig+(3*dx-dy)/4,
       yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
       yuka_next[yo][xo],kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
  }else {
    start_collection("PiTCH_central");
    int dy = yo*NT, dx = xo*NT;
    pitch_kernel //<false, false>
      (t_orig+(dx+dy)/4,
       y_orig+(3*dy-dx)/4,
       x_orig+(3*dx-dy)/4,
       yuka[yo][xo],kabe_y[yo][xo],kabe_x[yo][xo],
       yuka_next[yo][xo],kabe_y[(yo+1)%NTO][xo],kabe_x[yo][(xo+1)%NTO]);
    stop_collection("PiTCH_central");
  }
  swap(yuka[yo][xo], yuka_next[yo][xo]);

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

  cerr << "enter simd4 mode" <<endl;

  sim_t_1=-1, sim_t_2=-1;
  wct_1=-1, wct_2=-1;

#pragma omp for
  for (int xo=0;xo<NTO;xo++) {
    for (int yo=0;yo<NTO;yo++) {
      yuka     [yo][xo] = yuka_hontai     [yo][xo];
      yuka_next[yo][xo] = yuka_next_hontai[yo][xo];
    }
  }

#pragma omp for
  for (int xo=0;xo<NTO;xo++) {
    thread_local_t[xo] = -NX;
    thread_local_yo[xo] = 0;
    thread_speed_flag[xo] = 1;
  }


  for(int yo=0;yo<NTO;yo++) {
#pragma omp for
  for (int xo=0;xo<NTO-yo-1;xo++) {
      proceed_thread(xo);
    }
  }

  cerr << "start bench" <<endl;
  start_collection("PiTCH_solver");

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

      bool flag;

#pragma omp barrier
      flag=true;

      for(int xo=0;xo<NTO;xo++) {
        if(thread_speed_flag[xo]>0) flag=false;
      }
      if(flag) break;

    }
  }
  stop_collection("PiTCH_solver");


  assert( sim_t_1 != -1 && sim_t_2 != -1 &&
          wct_1 != -1&& wct_2 != -1);

  benchmark_self_reported_wct = wct_2 - wct_1;
  benchmark_self_reported_delta_t = sim_t_2 - sim_t_1;
  cerr << "exit simd4 mode" <<endl;

}


bool debug_mode = true;

int time_iteration_scaling;

void leave_dump () {
  ostringstream fn;
  fn << "gen/finalstate-nx-" << NX << "-S-" << time_iteration_scaling << "-" <<  algorithm_tag_str << ".txt";
  dump(fn.str().c_str());
}

int main (int argc, char** argv)
{
  if (debug_mode) {
    time_iteration_scaling = 3;
  } else {
    cerr << "calibrating..." << endl;
    for(time_iteration_scaling=1;;time_iteration_scaling*=2){
      initialize();
      double t1 = second();
      T_FINAL=NX*time_iteration_scaling;
      solve();
      double t2 = second();
      cerr << t2 << " " << t1 << endl;
      if (time_iteration_scaling==1) leave_dump();
      if(t2-t1>0.1) {
        if(t2-t1<10)
          time_iteration_scaling *= 3;
        else
          time_iteration_scaling *= 2;
        break;
      }
    }
  }
  cerr << "scale: " << time_iteration_scaling << endl;

  string benchmark_fn = string("") +
    "result-" +
    (argc>1 ? argv[1] : "") +
    "-benchmark.txt";

  ofstream fs_log(benchmark_fn.c_str(), ofstream::app | ofstream::out);

  int nth;

  #pragma omp parallel
  {
    #pragma omp master
    nth = omp_get_num_threads();
  }

  for(int iter=0;iter< (debug_mode ? 1 : 10);++iter) {
    ostringstream msg;
    msg <<
      algorithm_tag_str <<
      "\tNthre: " << nth <<
      "\tNX: " << NX << "\t"  ;
    T_FINAL = NX*time_iteration_scaling;
    initialize();

    solve();

    double n_flop=6.0*NX*NX*double(benchmark_self_reported_delta_t);
    double wct = benchmark_self_reported_wct;
    msg << n_flop << " flop\t" << wct << " second\t" ;
    msg << n_flop/wct << " flop/s";
    cerr << msg.str() << endl;
    fs_log << msg.str() << endl;
  }

  leave_dump();
}
