#include <algorithm>

template <int NX, int NY, int NZ, class T> struct naive_integrator {
  typedef T surface[NX][NY];
  static T U_other[NX][NY][NZ], V_other[NX][NY][NZ];
  void proceed(int timesteps, T U[NX][NY][NZ], T V[NX][NY][NZ]) {
    for (int t=0;t<timesteps;++t){
      auto wrap = [](T ar[NX][NY][NZ],int x, int y, int z) {
        x = (x+NX)%NX;
        y = (y+NY)%NY;
        z = (z+NZ)%NZ;
        return ar[x][y][z];
      }
      for (int x=0;x<NX;++x) {
        for (int y=0;y<NY;++y) {
          for (int z=0;z<NZ;++z) {
            U_other[x][y][z] = wrap(U,x+1,y+1,z+1);
          }
        }
      }
      swap(U,U_other);
      swap(V,V_other);
    }
  }
};
