
#pragma once
#ifdef __cplusplus
extern "C"
{
#endif
#include <mpi.h>


  extern double Bx[616][616];
  extern double By[616][616];
  extern double Bz[616][616];
  extern double dens[616][616];
  extern double s[616][616];
  extern double vx[616][616];
  extern double vy[616][616];
  extern double vz[616][616];
  extern double Ridge_0_1_St_Bx[600][8];
  extern double Ridge_0_1_St_By[600][8];
  extern double Ridge_0_1_St_Bz[600][8];
  extern double Ridge_0_1_St_dens[600][8];
  extern double Ridge_0_1_St_s[600][8];
  extern double Ridge_0_1_St_vx[600][8];
  extern double Ridge_0_1_St_vy[600][8];
  extern double Ridge_0_1_St_vz[600][8];
  extern double Ridge_1_0_St_Bx[8][600];
  extern double Ridge_1_0_St_By[8][600];
  extern double Ridge_1_0_St_Bz[8][600];
  extern double Ridge_1_0_St_dens[8][600];
  extern double Ridge_1_0_St_s[8][600];
  extern double Ridge_1_0_St_vx[8][600];
  extern double Ridge_1_0_St_vy[8][600];
  extern double Ridge_1_0_St_vz[8][600];
  extern double Ridge_1_1_St_Bx[8][8];
  extern double Ridge_1_1_St_By[8][8];
  extern double Ridge_1_1_St_Bz[8][8];
  extern double Ridge_1_1_St_dens[8][8];
  extern double Ridge_1_1_St_s[8][8];
  extern double Ridge_1_1_St_vx[8][8];
  extern double Ridge_1_1_St_vy[8][8];
  extern double Ridge_1_1_St_vz[8][8];
  extern double Ridge_m1_m1_St_Bx[8][8];
  extern double Ridge_m1_m1_St_By[8][8];
  extern double Ridge_m1_m1_St_Bz[8][8];
  extern double Ridge_m1_m1_St_dens[8][8];
  extern double Ridge_m1_m1_St_s[8][8];
  extern double Ridge_m1_m1_St_vx[8][8];
  extern double Ridge_m1_m1_St_vy[8][8];
  extern double Ridge_m1_m1_St_vz[8][8];
  extern double Ridge_m1_0_St_Bx[8][600];
  extern double Ridge_m1_0_St_By[8][600];
  extern double Ridge_m1_0_St_Bz[8][600];
  extern double Ridge_m1_0_St_dens[8][600];
  extern double Ridge_m1_0_St_s[8][600];
  extern double Ridge_m1_0_St_vx[8][600];
  extern double Ridge_m1_0_St_vy[8][600];
  extern double Ridge_m1_0_St_vz[8][600];
  extern double Ridge_0_m1_St_Bx[600][8];
  extern double Ridge_0_m1_St_By[600][8];
  extern double Ridge_0_m1_St_Bz[600][8];
  extern double Ridge_0_m1_St_dens[600][8];
  extern double Ridge_0_m1_St_s[600][8];
  extern double Ridge_0_m1_St_vx[600][8];
  extern double Ridge_0_m1_St_vy[600][8];
  extern double Ridge_0_m1_St_vz[600][8];

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
