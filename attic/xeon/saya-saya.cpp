#include <cmath>
#include <unistd.h>
#include <fstream>
#include <iostream>
#include <sstream>
#include <sys/time.h>
#include <omp.h>
#define NX 50
#define NY 50
#define NZ 50

#define SX 34
#define SY 34
#define SZ 68

#define HIERARCHY_ITER 16


#define T_MAX 16

typedef double Real;

const Real Fu = 1.0/86400, Fv = 6.0/86400, Fe = 1.0/900, Du = 0.1*2.3e-9, Dv = 12.2e-11;
const Real dt = 0*200, dx = 0.001;

Real U[NX][NY][NZ], V[NX][NY][NZ];
Real U_other[NX][NY][NZ], V_other[NX][NY][NZ];
int global_clock;


Real Uwx[T_MAX][2][SY][SZ], Uwy[T_MAX][SX][2][SZ], Uwz[T_MAX][SX][SY][2];
Real Vwx[T_MAX][2][SY][SZ], Vwy[T_MAX][SX][2][SZ], Vwz[T_MAX][SX][SY][2];

Real sU0[SX][SY][SZ], sV0[SX][SY][SZ];
Real sU[SX][SY][SZ], sV[SX][SY][SZ];
Real sU_1[SX][SY][SZ], sV_1[SX][SY][SZ];

double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}



void fill_initial_condition() {
  global_clock=0;
  for (int x=0;x<NX;++x) {
    for (int y=0;y<NY;++y) {
      for (int z=0;z<NZ;++z) {
        U[x][y][z] = 1;
        V[x][y][z] = 0;
      }
    }
  }
  int bx = std::max(NX/4,NX/2-8),  ex = std::min(3*NX/4+1,NX/2+8);
  int by = std::max(NY/4,NY/2-8),  ey = std::min(3*NY/4+1,NY/2+8);
  int bz = std::max(NZ/4,NZ/2-8),  ez = std::min(3*NZ/4+1,NZ/2+8);
  for (int x=bx;x<ex;++x){
    for (int y=by;y<ey;++y){
      for (int z=bz;z<ez;++z){
        U[x][y][z] = 0.5;
        V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
      }
    }
  }
}


inline Real periodic(Real ar[NX][NY][NZ],int x, int y, int z) {
  x = ((x+100*NX)%NX+NX)%NX;
  y = ((y+100*NY)%NY+NY)%NY;
  z = ((z+100*NZ)%NZ+NZ)%NZ;
  //x = (x+NX)%NX;
  //y = (y+NY)%NY;
  //z = (z+NZ)%NZ;
  return ar[x][y][z];
}


void naive_proceed() {
  ++global_clock;

  auto lap = [](Real ar[NX][NY][NZ],int x, int y, int z) {
    auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
    + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
    + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
    - 6*ar[x][y][z];
    return ret / dx / dx;
  };

#pragma omp parallel for collapse(2)
  for (int x=0;x<NX;++x) {
    for (int y=0;y<NY;++y) {
      for (int z=0;z<NZ;++z) {
        auto u = U[x][y][z],  v = V[x][y][z];
        auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
        auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
        U_other[x][y][z] = U[x][y][z] + dt*du_dt;
        V_other[x][y][z] = V[x][y][z] + dt*dv_dt;
      }
    }
  }

  for (int x=0;x<NX;++x) {
    for (int y=0;y<NY;++y) {
      for (int z=0;z<NZ;++z) {
        U[x][y][z]=U_other[x][y][z];
      }
    }
  }
  for (int x=0;x<NX;++x) {
    for (int y=0;y<NY;++y) {
      for (int z=0;z<NZ;++z) {
        V[x][y][z]=V_other[x][y][z];
      }
    }
  }
}

void get_solution_at(int t, int x, int y, int z, Real &u, Real &v) {
  if(global_clock > t) fill_initial_condition();
  while(global_clock < t) naive_proceed();
  u = periodic(U,x,y,z);
  v = periodic(V,x,y,z);
}

int main () {

  fill_initial_condition();
  for(int x=0;x<SX;++x) {
    for(int y=0;y<SY;++y) {
      for(int z=0;z<SZ;++z) {
        double u,v; get_solution_at(0,x,y,z, u,v);
        sU0[x][y][z]=u;
        sV0[x][y][z]=v;
      }
    }
  }

  std::cerr << "Setting up wall values..." << std::endl;
  for(int t = 0;t<T_MAX;++t){
    for(int x=SX-2;x<SX;++x) {
      for(int y=0;y<SY;++y) {
        for(int z=0;z<SZ;++z) {
          double u,v; get_solution_at(t,x+t,y+t,z+t, u,v);
          Uwx[t][x-(SX-2)][y][z] = u;
          Vwx[t][x-(SX-2)][y][z] = v;
        }
      }
    }

    for(int x=0;x<SX;++x) {
      for(int y=SY-2;y<SY;++y) {
        for(int z=0;z<SZ;++z) {
          double u,v; get_solution_at(t,x+t,y+t,z+t, u,v);
          Uwy[t][x][y-(SY-2)][z] = u;
          Vwy[t][x][y-(SY-2)][z] = v;
        }
      }
    }

    for(int x=0;x<SX;++x) {
      for(int y=0;y<SY;++y) {
        for(int z=SZ-2;z<SZ;++z) {
          double u,v; get_solution_at(t,x+t,y+t,z+t, u,v);
          Uwz[t][x][y][z-(SZ-2)] = u;
          Vwz[t][x][y][z-(SZ-2)] = v;
        }
      }
    }
  }


  for(int trial=0;trial<10;++trial) {
    std::cerr << "Carrying out simulation..." << std::endl;

    double time_begin = wctime();
    double time_comp = 0, time_comm = 0, timestamp_1, timestamp_2, timestamp_3;

#pragma omp parallel //shared(time_comp, time_comm, timestamp_1,timestamp_2, timestamp_3)
    {
      for(int hier=0; hier<HIERARCHY_ITER; ++hier){
        // set initial condition
#pragma omp for collapse(3)
      for(int x=0;x<SX;++x) {
        for(int y=0;y<SY;++y) {
          for(int z=0;z<SZ;++z) {
            sU[x][y][z]=sU0[x][y][z];
            sV[x][y][z]=sV0[x][y][z];
          }
        }
      }
#pragma omp barrier

      for(int t = 0; t < T_MAX; ++t){

        //timestamp_1 = wctime();
        // load communication values
#pragma omp for collapse(3)
        for(int x=SX-2;x<SX;++x) {
          for(int y=0;y<SY;++y) {
            for(int z=0;z<SZ;++z) {
              sU[x][y][z] = Uwx[t][x-(SX-2)][y][z];
              sV[x][y][z] = Vwx[t][x-(SX-2)][y][z];
            }
          }
        }

#pragma omp for collapse(3)
        for(int x=0;x<SX-2;++x) {
          for(int y=SY-2;y<SY;++y) {
            for(int z=0;z<SZ;++z) {
              sU[x][y][z] = Uwy[t][x][y-(SY-2)][z];
              sV[x][y][z] = Vwy[t][x][y-(SY-2)][z];
            }
          }
        }

#pragma omp for collapse(3)
        for(int x=0;x<SX-2;++x) {
          for(int y=0;y<SY-2;++y) {
            for(int z=SZ-2;z<SZ;++z) {
              sU[x][y][z] = Uwz[t][x][y][z-(SZ-2)];
              sV[x][y][z] = Vwz[t][x][y][z-(SZ-2)];
            }
          }
        }
#pragma omp barrier
        //double timestamp_2 = wctime();
        //        time_comm += timestamp_2 -  timestamp_1;

        const auto lap = [](Real ar[SX][SY][SZ],int x, int y, int z) {
          auto ret = ar[x][y+1][z+1] + ar[x+2][y+1][z+1]
          + ar[x+1][y][z+1] + ar[x+1][y+2][z+1]
          + ar[x+1][y+1][z] + ar[x+1][y+1][z+2]
          - 6*ar[x+1][y+1][z+1];
          return ret / dx / dx;
        };

        // non-destructively update the state
#pragma omp for collapse(2)
        for(int x=0;x<SX-2;++x) {
          for(int y=0;y<SY-2;++y) {
#pragma omp simd
            for(int z=0;z<SZ-2;++z) {
              Real u=sU[x+1][y+1][z+1] ;
              Real v=sV[x+1][y+1][z+1] ;

              auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(sU,x,y,z);
              auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(sV,x,y,z);
              sU_1[x][y][z] = u+dt*du_dt;
              sV_1[x][y][z] = v+dt*dv_dt;
            }
          }
        }
        //#pragma omp single{
        //double timestamp_3 = wctime();
        //time_comp += timestamp_3 -  timestamp_2;
        //}
#pragma omp barrier
#pragma omp for collapse(2)
        for(int x=0;x<SX-2;++x) {
          for(int y=0;y<SY-2;++y) {
#pragma omp simd
            for(int z=0;z<SZ-2;++z) {
              sU[x][y][z] = sU_1[x][y][z];
              sV[x][y][z] = sV_1[x][y][z];
            }
          }
        }
      }
    }
    }
    double time_end = wctime();

    double flop = 29.0 * (SX-2)*(SY-2)*(SZ-2) *T_MAX * HIERARCHY_ITER;
    double bw_gb= 8.0 * 2 * (7+1) * (SX-2)*(SY-2)*(SZ-2) *T_MAX * HIERARCHY_ITER;
    double time_elapse = time_end-time_begin;



    {
      const int n_thre = omp_get_max_threads();
      const int t = T_MAX;
      double num=0,den=0;
      for(int x=0;x<SX-2;++x) {
        for(int y=0;y<SY-2;++y) {
          for(int z=0;z<SZ-2;++z) {
            double u,v; get_solution_at(t,x+t,y+t,z+t, u,v);
            num += std::abs(u-sU[x][y][z]);
            den += 1;
          }
        }
      }
      std::ostringstream msg;
      msg << n_thre << "  " << SX << " " << SY << " " << SZ << "  " << T_MAX << " " << HIERARCHY_ITER << " "
          << " t: " << time_elapse << " t_com: " << time_comm << " t_comp: " << time_comp << " GFlops: " << flop/time_elapse/1e9<<  " GBps: " << bw_gb/time_elapse/1e9<< " error: " << (num/den);
      std::ofstream log_file("benchmark-saya-saya.txt", std::ios::app);
      std::cout << msg.str() << std::endl;
      log_file << msg.str() << std::endl;
    }
  }
}
