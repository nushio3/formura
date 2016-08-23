#include <cmath>
#include <unistd.h>
#include <iostream>
#include <sstream>

#define NX 50
#define NY 40
#define NZ 100

typedef double Real;

Real U[NX][NY][NZ], V[NX][NY][NZ];
Real U_other[NX][NY][NZ], V_other[NX][NY][NZ];

void fill_initial_condition() {
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

void naive_proceed(int timesteps) {
  
  const Real Fu = 1.0/86400, Fv = 6.0/86400, Fe = 1.0/900, Du = 0.1*2.3e-9, Dv = 12.2e-11;
  const Real dt = 200, dx = 0.001;

  auto periodic = [](Real ar[NX][NY][NZ],int x, int y, int z) {
    x = (x+NX)%NX;
    y = (y+NY)%NY;
    z = (z+NZ)%NZ;
    return ar[x][y][z];
  };
  auto lap = [&periodic, &dx](Real ar[NX][NY][NZ],int x, int y, int z) {
    auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
    + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
    + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
    - 6*ar[x][y][z];
    return ret / dx / dx;
  };

  for (int t=0;t<timesteps;++t){
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
}

int main () {
  fill_initial_condition();

  for(int t=0;;++t){
    naive_proceed(1);

    std::ostringstream ostr;
    ostr << t << "\n";
    for (int y=0;y<NY;++y) {
      for (int z=0;z<NZ;++z) {
        ostr<<int(std::floor(10*U[NX/2][y][z]));
      }
      ostr << "\n";
    }
    std::cout << ostr.str()<<std::endl;
    usleep(10000);
  }

}
