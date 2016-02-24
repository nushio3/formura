#include <mpi.h>
#include <math.h>
#include <stdbool.h>
#include "pearson.h"




double U[604][604];
double V[604][604];
double Om_29_r_0_0[198][298];
double Om_29_r_1_0[200][298];
double Om_29_r_2_0[202][298];
double Om_29_r_0_1[198][302];
double Om_29_r_1_1[200][302];
double Om_29_r_2_1[202][302];
double Om_49_r_0_0[198][298];
double Om_49_r_1_0[200][298];
double Om_49_r_2_0[202][298];
double Om_49_r_0_1[198][302];
double Om_49_r_1_1[200][302];
double Om_49_r_2_1[202][302];
double Om_51_r_0_0[198][298];
double Om_51_r_1_0[200][298];
double Om_51_r_2_0[202][298];
double Om_51_r_0_1[198][302];
double Om_51_r_1_1[200][302];
double Om_51_r_2_1[202][302];
double Om_53_r_0_0[198][298];
double Om_53_r_1_0[200][298];
double Om_53_r_2_0[202][298];
double Om_53_r_0_1[198][302];
double Om_53_r_1_1[200][302];
double Om_53_r_2_1[202][302];
double Ridge_0_1_St_U[600][2];
double Ridge_0_1_St_V[600][2];
double Ridge_1_0_St_U[2][600];
double Ridge_1_0_St_V[2][600];
double Ridge_1_1_St_U[2][2];
double Ridge_1_1_St_V[2][2];
double Om_29_r_0_0_1[202][302];
double Om_29_r_1_0_1[200][302];
double Om_29_r_2_0_1[198][302];
double Om_29_r_0_1_1[202][298];
double Om_29_r_1_1_1[200][298];
double Om_29_r_2_1_1[198][298];
double Om_49_r_0_0_1[202][302];
double Om_49_r_1_0_1[200][302];
double Om_49_r_2_0_1[198][302];
double Om_49_r_0_1_1[202][298];
double Om_49_r_1_1_1[200][298];
double Om_49_r_2_1_1[198][298];
double Om_51_r_0_0_1[202][302];
double Om_51_r_1_0_1[200][302];
double Om_51_r_2_0_1[198][302];
double Om_51_r_0_1_1[202][298];
double Om_51_r_1_1_1[200][298];
double Om_51_r_2_1_1[198][298];
double Om_53_r_0_0_1[202][302];
double Om_53_r_1_0_1[200][302];
double Om_53_r_2_0_1[198][302];
double Om_53_r_0_1_1[202][298];
double Om_53_r_1_1_1[200][298];
double Om_53_r_2_1_1[198][298];
double Ridge_m1_m1_St_U[2][2];
double Ridge_m1_m1_St_V[2][2];
double Ridge_m1_0_St_U[2][600];
double Ridge_m1_0_St_V[2][600];
double Ridge_0_m1_St_U[600][2];
double Ridge_0_m1_St_V[600][2];



int
Formura_Init (struct Formura_Navigator *navi, MPI_Comm comm)
{
  navi->time_step = 0;
  navi->lower_x = 0;
  navi->offset_x = 0;
  navi->upper_x = 600;
  navi->lower_y = 0;
  navi->offset_y = 0;
  navi->upper_y = 600;
  return 0;
}


int
Formura_Forward (struct Formura_Navigator *navi)
{
  for (int timestep = 0; timestep < 10; ++timestep) {
    for (int ix = 0; ix < 600; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        Ridge_0_1_St_U[ix][iy] = U[ix + 2][iy + 2];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 600; ++iy) {
        Ridge_1_0_St_U[ix][iy] = U[ix + 2][iy + 2];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        Ridge_1_1_St_U[ix][iy] = U[ix + 2][iy + 2];
      }
    }
    for (int ix = 0; ix < 600; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        Ridge_0_1_St_V[ix][iy] = V[ix + 2][iy + 2];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 600; ++iy) {
        Ridge_1_0_St_V[ix][iy] = V[ix + 2][iy + 2];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        Ridge_1_1_St_V[ix][iy] = V[ix + 2][iy + 2];
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 3][iy + 3];
        double a_0 = V[ix + 3][iy + 3];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 4][iy + 3];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 2][iy + 3];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 3][iy + 4];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 3][iy + 2];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_0_0[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 3][iy + 3];
        double a_0 = V[ix + 3][iy + 3];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 4][iy + 3];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 2][iy + 3];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 3][iy + 4];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 3][iy + 2];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_0_0[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 3][iy + 3];
        double a_0 = 1.0;
        double a_1 = Om_29_r_0_0[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_0_0[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = V[ix + 3][iy + 3];
        double a_0 = 1.0;
        double a_1 = Om_49_r_0_0[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_0_0[ix][iy] = a_3;
      }
    }
    for (int ix = 3; ix < 201; ++ix) {
      for (int iy = 3; iy < 301; ++iy) {
        double a = Om_51_r_0_0[ix - 3][iy - 3];


        U[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 3; ix < 201; ++ix) {
      for (int iy = 3; iy < 301; ++iy) {
        double a = Om_53_r_0_0[ix - 3][iy - 3];


        V[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 201][iy + 3];
        double a_0 = V[ix + 201][iy + 3];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 202][iy + 3];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 200][iy + 3];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 201][iy + 4];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 201][iy + 2];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_1_0[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 201][iy + 3];
        double a_0 = V[ix + 201][iy + 3];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 202][iy + 3];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 200][iy + 3];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 201][iy + 4];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 201][iy + 2];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_1_0[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 201][iy + 3];
        double a_0 = 1.0;
        double a_1 = Om_29_r_1_0[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_1_0[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = V[ix + 201][iy + 3];
        double a_0 = 1.0;
        double a_1 = Om_49_r_1_0[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_1_0[ix][iy] = a_3;
      }
    }
    for (int ix = 201; ix < 401; ++ix) {
      for (int iy = 3; iy < 301; ++iy) {
        double a = Om_51_r_1_0[ix - 201][iy - 3];


        U[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 201; ix < 401; ++ix) {
      for (int iy = 3; iy < 301; ++iy) {
        double a = Om_53_r_1_0[ix - 201][iy - 3];


        V[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 600; ++iy) {
        U[ix + 602][iy + 2] = Ridge_1_0_St_U[ix][iy];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 600; ++iy) {
        V[ix + 602][iy + 2] = Ridge_1_0_St_V[ix][iy];
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 401][iy + 3];
        double a_0 = V[ix + 401][iy + 3];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 402][iy + 3];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 400][iy + 3];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 401][iy + 4];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 401][iy + 2];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_2_0[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 401][iy + 3];
        double a_0 = V[ix + 401][iy + 3];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 402][iy + 3];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 400][iy + 3];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 401][iy + 4];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 401][iy + 2];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_2_0[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 401][iy + 3];
        double a_0 = 1.0;
        double a_1 = Om_29_r_2_0[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_2_0[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = V[ix + 401][iy + 3];
        double a_0 = 1.0;
        double a_1 = Om_49_r_2_0[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_2_0[ix][iy] = a_3;
      }
    }
    for (int ix = 401; ix < 603; ++ix) {
      for (int iy = 3; iy < 301; ++iy) {
        double a = Om_51_r_2_0[ix - 401][iy - 3];


        U[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 401; ix < 603; ++ix) {
      for (int iy = 3; iy < 301; ++iy) {
        double a = Om_53_r_2_0[ix - 401][iy - 3];


        V[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 0; ix < 600; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        U[ix + 2][iy + 602] = Ridge_0_1_St_U[ix][iy];
      }
    }
    for (int ix = 0; ix < 600; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        V[ix + 2][iy + 602] = Ridge_0_1_St_V[ix][iy];
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 3][iy + 301];
        double a_0 = V[ix + 3][iy + 301];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 4][iy + 301];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 2][iy + 301];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 3][iy + 302];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 3][iy + 300];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_0_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 3][iy + 301];
        double a_0 = V[ix + 3][iy + 301];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 4][iy + 301];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 2][iy + 301];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 3][iy + 302];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 3][iy + 300];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_0_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 3][iy + 301];
        double a_0 = 1.0;
        double a_1 = Om_29_r_0_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_0_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = V[ix + 3][iy + 301];
        double a_0 = 1.0;
        double a_1 = Om_49_r_0_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_0_1[ix][iy] = a_3;
      }
    }
    for (int ix = 3; ix < 201; ++ix) {
      for (int iy = 301; iy < 603; ++iy) {
        double a = Om_51_r_0_1[ix - 3][iy - 301];


        U[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 3; ix < 201; ++ix) {
      for (int iy = 301; iy < 603; ++iy) {
        double a = Om_53_r_0_1[ix - 3][iy - 301];


        V[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 201][iy + 301];
        double a_0 = V[ix + 201][iy + 301];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 202][iy + 301];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 200][iy + 301];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 201][iy + 302];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 201][iy + 300];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_1_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 201][iy + 301];
        double a_0 = V[ix + 201][iy + 301];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 202][iy + 301];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 200][iy + 301];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 201][iy + 302];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 201][iy + 300];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_1_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 201][iy + 301];
        double a_0 = 1.0;
        double a_1 = Om_29_r_1_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_1_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = V[ix + 201][iy + 301];
        double a_0 = 1.0;
        double a_1 = Om_49_r_1_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_1_1[ix][iy] = a_3;
      }
    }
    for (int ix = 201; ix < 401; ++ix) {
      for (int iy = 301; iy < 603; ++iy) {
        double a = Om_51_r_1_1[ix - 201][iy - 301];


        U[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 201; ix < 401; ++ix) {
      for (int iy = 301; iy < 603; ++iy) {
        double a = Om_53_r_1_1[ix - 201][iy - 301];


        V[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        U[ix + 602][iy + 602] = Ridge_1_1_St_U[ix][iy];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        V[ix + 602][iy + 602] = Ridge_1_1_St_V[ix][iy];
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 401][iy + 301];
        double a_0 = V[ix + 401][iy + 301];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 402][iy + 301];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 400][iy + 301];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 401][iy + 302];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 401][iy + 300];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_2_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 401][iy + 301];
        double a_0 = V[ix + 401][iy + 301];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 402][iy + 301];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 400][iy + 301];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 401][iy + 302];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 401][iy + 300];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_2_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 401][iy + 301];
        double a_0 = 1.0;
        double a_1 = Om_29_r_2_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_2_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = V[ix + 401][iy + 301];
        double a_0 = 1.0;
        double a_1 = Om_49_r_2_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_2_1[ix][iy] = a_3;
      }
    }
    for (int ix = 401; ix < 603; ++ix) {
      for (int iy = 301; iy < 603; ++iy) {
        double a = Om_51_r_2_1[ix - 401][iy - 301];


        U[ix + -1][iy + -1] = a;
      }
    }
    for (int ix = 401; ix < 603; ++ix) {
      for (int iy = 301; iy < 603; ++iy) {
        double a = Om_53_r_2_1[ix - 401][iy - 301];


        V[ix + -1][iy + -1] = a;
      }
    }

/* HALFWAYS */
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        Ridge_m1_m1_St_U[ix][iy] = U[ix + 600][iy + 600];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 600; ++iy) {
        Ridge_m1_0_St_U[ix][iy] = U[ix + 600][iy + 2];
      }
    }
    for (int ix = 0; ix < 600; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        Ridge_0_m1_St_U[ix][iy] = U[ix + 2][iy + 600];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        Ridge_m1_m1_St_V[ix][iy] = V[ix + 600][iy + 600];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 600; ++iy) {
        Ridge_m1_0_St_V[ix][iy] = V[ix + 600][iy + 2];
      }
    }
    for (int ix = 0; ix < 600; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        Ridge_0_m1_St_V[ix][iy] = V[ix + 2][iy + 600];
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 403][iy + 303];
        double a_0 = V[ix + 403][iy + 303];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 404][iy + 303];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 402][iy + 303];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 403][iy + 304];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 403][iy + 302];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_2_1_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 403][iy + 303];
        double a_0 = V[ix + 403][iy + 303];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 404][iy + 303];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 402][iy + 303];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 403][iy + 304];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 403][iy + 302];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_2_1_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 403][iy + 303];
        double a_0 = 1.0;
        double a_1 = Om_29_r_2_1_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_2_1_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = V[ix + 403][iy + 303];
        double a_0 = 1.0;
        double a_1 = Om_49_r_2_1_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_2_1_1[ix][iy] = a_3;
      }
    }
    for (int ix = 403; ix < 601; ++ix) {
      for (int iy = 303; iy < 601; ++iy) {
        double a = Om_51_r_2_1_1[ix - 403][iy - 303];


        U[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 403; ix < 601; ++ix) {
      for (int iy = 303; iy < 601; ++iy) {
        double a = Om_53_r_2_1_1[ix - 403][iy - 303];


        V[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 203][iy + 303];
        double a_0 = V[ix + 203][iy + 303];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 204][iy + 303];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 202][iy + 303];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 203][iy + 304];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 203][iy + 302];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_1_1_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 203][iy + 303];
        double a_0 = V[ix + 203][iy + 303];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 204][iy + 303];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 202][iy + 303];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 203][iy + 304];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 203][iy + 302];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_1_1_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 203][iy + 303];
        double a_0 = 1.0;
        double a_1 = Om_29_r_1_1_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_1_1_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = V[ix + 203][iy + 303];
        double a_0 = 1.0;
        double a_1 = Om_49_r_1_1_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_1_1_1[ix][iy] = a_3;
      }
    }
    for (int ix = 203; ix < 403; ++ix) {
      for (int iy = 303; iy < 601; ++iy) {
        double a = Om_51_r_1_1_1[ix - 203][iy - 303];


        U[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 203; ix < 403; ++ix) {
      for (int iy = 303; iy < 601; ++iy) {
        double a = Om_53_r_1_1_1[ix - 203][iy - 303];


        V[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 600; ++iy) {
        U[ix + 0][iy + 2] = Ridge_m1_0_St_U[ix][iy];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 600; ++iy) {
        V[ix + 0][iy + 2] = Ridge_m1_0_St_V[ix][iy];
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 1][iy + 303];
        double a_0 = V[ix + 1][iy + 303];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 2][iy + 303];
        double a_14 = (a_13 - a);
        double a_15 = U[ix][iy + 303];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 1][iy + 304];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 1][iy + 302];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_0_1_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 1][iy + 303];
        double a_0 = V[ix + 1][iy + 303];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 2][iy + 303];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix][iy + 303];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 1][iy + 304];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 1][iy + 302];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_0_1_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = U[ix + 1][iy + 303];
        double a_0 = 1.0;
        double a_1 = Om_29_r_0_1_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_0_1_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 298; ++iy) {
        double a = V[ix + 1][iy + 303];
        double a_0 = 1.0;
        double a_1 = Om_49_r_0_1_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_0_1_1[ix][iy] = a_3;
      }
    }
    for (int ix = 1; ix < 203; ++ix) {
      for (int iy = 303; iy < 601; ++iy) {
        double a = Om_51_r_0_1_1[ix - 1][iy - 303];


        U[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 1; ix < 203; ++ix) {
      for (int iy = 303; iy < 601; ++iy) {
        double a = Om_53_r_0_1_1[ix - 1][iy - 303];


        V[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 0; ix < 600; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        U[ix + 2][iy + 0] = Ridge_0_m1_St_U[ix][iy];
      }
    }
    for (int ix = 0; ix < 600; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        V[ix + 2][iy + 0] = Ridge_0_m1_St_V[ix][iy];
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 403][iy + 1];
        double a_0 = V[ix + 403][iy + 1];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 404][iy + 1];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 402][iy + 1];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 403][iy + 2];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 403][iy];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_2_0_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 403][iy + 1];
        double a_0 = V[ix + 403][iy + 1];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 404][iy + 1];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 402][iy + 1];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 403][iy + 2];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 403][iy];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_2_0_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 403][iy + 1];
        double a_0 = 1.0;
        double a_1 = Om_29_r_2_0_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_2_0_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 198; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = V[ix + 403][iy + 1];
        double a_0 = 1.0;
        double a_1 = Om_49_r_2_0_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_2_0_1[ix][iy] = a_3;
      }
    }
    for (int ix = 403; ix < 601; ++ix) {
      for (int iy = 1; iy < 303; ++iy) {
        double a = Om_51_r_2_0_1[ix - 403][iy - 1];


        U[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 403; ix < 601; ++ix) {
      for (int iy = 1; iy < 303; ++iy) {
        double a = Om_53_r_2_0_1[ix - 403][iy - 1];


        V[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 203][iy + 1];
        double a_0 = V[ix + 203][iy + 1];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 204][iy + 1];
        double a_14 = (a_13 - a);
        double a_15 = U[ix + 202][iy + 1];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 203][iy + 2];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 203][iy];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_1_0_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 203][iy + 1];
        double a_0 = V[ix + 203][iy + 1];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 204][iy + 1];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix + 202][iy + 1];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 203][iy + 2];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 203][iy];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_1_0_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 203][iy + 1];
        double a_0 = 1.0;
        double a_1 = Om_29_r_1_0_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_1_0_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 200; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = V[ix + 203][iy + 1];
        double a_0 = 1.0;
        double a_1 = Om_49_r_1_0_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_1_0_1[ix][iy] = a_3;
      }
    }
    for (int ix = 203; ix < 403; ++ix) {
      for (int iy = 1; iy < 303; ++iy) {
        double a = Om_51_r_1_0_1[ix - 203][iy - 1];


        U[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 203; ix < 403; ++ix) {
      for (int iy = 1; iy < 303; ++iy) {
        double a = Om_53_r_1_0_1[ix - 203][iy - 1];


        V[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        U[ix + 0][iy + 0] = Ridge_m1_m1_St_U[ix][iy];
      }
    }
    for (int ix = 0; ix < 2; ++ix) {
      for (int iy = 0; iy < 2; ++iy) {
        V[ix + 0][iy + 0] = Ridge_m1_m1_St_V[ix][iy];
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 1][iy + 1];
        double a_0 = V[ix + 1][iy + 1];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = (-a_2);
        double a_4 = 1.5e-2;
        double a_5 = 1.0;
        double a_6 = (a_5 - a);
        double a_7 = (a_4 * a_6);
        double a_8 = (a_3 + a_7);
        double a_9 = 2.0e-5;
        double a_10 = 1.0e-2;
        double a_11 = (a_10 * a_10);
        double a_12 = (a_9 / a_11);
        double a_13 = U[ix + 2][iy + 1];
        double a_14 = (a_13 - a);
        double a_15 = U[ix][iy + 1];
        double a_16 = (a - a_15);
        double a_17 = (a_14 - a_16);
        double a_18 = U[ix + 1][iy + 2];
        double a_19 = (a_18 - a);
        double a_20 = U[ix + 1][iy];
        double a_21 = (a - a_20);
        double a_22 = (a_19 - a_21);
        double a_23 = (a_17 + a_22);
        double a_24 = (a_12 * a_23);
        double a_25 = (a_8 + a_24);

        Om_29_r_0_0_1[ix][iy] = a_25;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 1][iy + 1];
        double a_0 = V[ix + 1][iy + 1];
        double a_1 = (a * a_0);
        double a_2 = (a_1 * a_0);
        double a_3 = 1.5e-2;
        double a_4 = 5.0e-2;
        double a_5 = (a_3 + a_4);
        double a_6 = (a_5 * a_0);
        double a_7 = (a_2 - a_6);
        double a_8 = 1.0e-5;
        double a_9 = 1.0e-2;
        double a_10 = (a_9 * a_9);
        double a_11 = (a_8 / a_10);
        double a_12 = V[ix + 2][iy + 1];
        double a_13 = (a_12 - a_0);
        double a_14 = V[ix][iy + 1];
        double a_15 = (a_0 - a_14);
        double a_16 = (a_13 - a_15);
        double a_17 = V[ix + 1][iy + 2];
        double a_18 = (a_17 - a_0);
        double a_19 = V[ix + 1][iy];
        double a_20 = (a_0 - a_19);
        double a_21 = (a_18 - a_20);
        double a_22 = (a_16 + a_21);
        double a_23 = (a_11 * a_22);
        double a_24 = (a_7 + a_23);

        Om_49_r_0_0_1[ix][iy] = a_24;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = U[ix + 1][iy + 1];
        double a_0 = 1.0;
        double a_1 = Om_29_r_0_0_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_51_r_0_0_1[ix][iy] = a_3;
      }
    }
    for (int ix = 0; ix < 202; ++ix) {
      for (int iy = 0; iy < 302; ++iy) {
        double a = V[ix + 1][iy + 1];
        double a_0 = 1.0;
        double a_1 = Om_49_r_0_0_1[ix][iy];
        double a_2 = (a_0 * a_1);
        double a_3 = (a + a_2);

        Om_53_r_0_0_1[ix][iy] = a_3;
      }
    }
    for (int ix = 1; ix < 203; ++ix) {
      for (int iy = 1; iy < 303; ++iy) {
        double a = Om_51_r_0_0_1[ix - 1][iy - 1];


        U[ix + 1][iy + 1] = a;
      }
    }
    for (int ix = 1; ix < 203; ++ix) {
      for (int iy = 1; iy < 303; ++iy) {
        double a = Om_53_r_0_0_1[ix - 1][iy - 1];


        V[ix + 1][iy + 1] = a;
      }
    }


  }
  navi->time_step += 20;
  return 0;
}
