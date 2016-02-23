#pragma once
#ifdef __cplusplus
extern "C"
{
#endif
#include <mpi.h>


  extern float U[256][256];
  extern float V[256][256];

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
