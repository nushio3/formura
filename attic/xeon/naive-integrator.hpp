
template <int NX, int NY, int NZ, class T> struct naive_integrator {
  typedef T surface[NX][NY];
  void proceed(int timesteps, T U[NX][NY][NZ], T V[NX][NY][NZ]) {
    static T U_other[NX][NY][NZ], V_other[NX][NY][NZ];

    const double Fu = 1.0/86400, Fv = 6.0/86400, Fe = 1.0/900, Du = 0.1*2.3e-9, Dv = 12.2e-11;
    const double dt = 200, dx = 0.001;

    auto periodic = [](T ar[NX][NY][NZ],int x, int y, int z) {
      x = (x+NX)%NX;
      y = (y+NY)%NY;
      z = (z+NZ)%NZ;
      return ar[x][y][z];
    };
    auto lap = [&periodic, &dx](T ar[NX][NY][NZ],int x, int y, int z) {
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
};
