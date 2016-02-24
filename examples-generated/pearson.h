
#pragma once
#ifdef __cplusplus
extern "C"
{
#endif
#include <mpi.h>


  extern double U[604][604];
  extern double V[604][604];
  extern double Ridge_0_1_St_U[600][2];
  extern double Ridge_0_1_St_V[600][2];
  extern double Ridge_1_0_St_U[2][600];
  extern double Ridge_1_0_St_V[2][600];
  extern double Ridge_1_1_St_U[2][2];
  extern double Ridge_1_1_St_V[2][2];
  extern double Ridge_m1_m1_St_U[2][2];
  extern double Ridge_m1_m1_St_V[2][2];
  extern double Ridge_m1_0_St_U[2][600];
  extern double Ridge_m1_0_St_V[2][600];
  extern double Ridge_0_m1_St_U[600][2];
  extern double Ridge_0_m1_St_V[600][2];

  struct Formura_Navigator
  {
    int time_step;
    int lower_x;
    int upper_x;
    int offset_x;
    int lower_y;
    int upper_y;
    int offset_y;
  };


  int Formura_Init (struct Formura_Navigator *navi, MPI_Comm comm);

  int Formura_Forward (struct Formura_Navigator *navi);
#ifdef __cplusplus
}
#endif
