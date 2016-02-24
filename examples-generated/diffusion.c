#include <mpi.h>
#include <math.h>
#include "diffusion.h"

#define min(a,b) ((a)<(b)?(a):(b))
#define max(a,b) ((a)>(b)?(a):(b))
#define minmod(a,b) (min(a,b)>0?min(a,b):(max(a,b)<0?max(a,b):0))
typedef int bool;



float dens[64][64][64];



int
Formura_Init (struct Formura_Navigator *navi, MPI_Comm comm)
{
  int ix, iy, iz;
  const int NX = 64, NY = 64, NZ = 64;
  for (ix = 0; ix < NX + 0; ++ix) {
    for (iy = 0; iy < NY + 0; ++iy) {
      for (iz = 0; iz < NZ + 0; ++iz) {
        float a = 0.0;


        dens[ix][iy][iz] = a;
      }
    }
  }

  navi->time_step = 0;
  navi->lower_x = 0;
  navi->offset_x = 0;
  navi->upper_x = 64;
  navi->lower_y = 0;
  navi->offset_y = 0;
  navi->upper_y = 64;
  navi->lower_z = 0;
  navi->offset_z = 0;
  navi->upper_z = 64;
}


int
Formura_Forward (struct Formura_Navigator *navi)
{
  int ix, iy, iz;
  const int NX = 64, NY = 64, NZ = 64;
  int timestep;
  for (timestep = 0; timestep < 1; ++timestep) {
    for (ix = 1; ix < NX + -1; ++ix) {
      for (iy = 1; iy < NY + -1; ++iy) {
        for (iz = 1; iz < NZ + -1; ++iz) {
          float a = dens[ix][iy][iz];
          float a_0 = 0.1;
          float a_1 = 4.2;
          float a_2 = 2.0;
          float a_3 = pow (a_1, a_2);
          float a_4 = (a_0 / a_3);
          float a_5 = dens[ix + 1][iy][iz];
          float a_6 = (a_5 - a);
          float a_7 = 2.0;
          float a_8 = (a_6 / a_7);
          float a_9 = dens[ix - 1][iy][iz];
          float a_10 = (a - a_9);
          float a_11 = 2.0;
          float a_12 = (a_10 / a_11);
          float a_13 = (a_8 - a_12);
          float a_14 = 2.0;
          float a_15 = (a_13 / a_14);
          float a_16 = dens[ix][iy + 1][iz];
          float a_17 = (a_16 - a);
          float a_18 = 2.0;
          float a_19 = (a_17 / a_18);
          float a_20 = dens[ix][iy - 1][iz];
          float a_21 = (a - a_20);
          float a_22 = 2.0;
          float a_23 = (a_21 / a_22);
          float a_24 = (a_19 - a_23);
          float a_25 = 2.0;
          float a_26 = (a_24 / a_25);
          float a_27 = (a_15 + a_26);
          float a_28 = dens[ix][iy][iz + 1];
          float a_29 = (a_28 - a);
          float a_30 = 2.0;
          float a_31 = (a_29 / a_30);
          float a_32 = dens[ix][iy][iz - 1];
          float a_33 = (a - a_32);
          float a_34 = 2.0;
          float a_35 = (a_33 / a_34);
          float a_36 = (a_31 - a_35);
          float a_37 = 2.0;
          float a_38 = (a_36 / a_37);
          float a_39 = (a_27 + a_38);
          float a_40 = (a_4 * a_39);
          float a_41 = (a + a_40);


          dens[ix][iy][iz] = a_41;
        }
      }
    }

  }
  navi->time_step += 1;
}
