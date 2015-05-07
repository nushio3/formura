/* compile with

   g++ main.cpp proceed-region.cpp -O2 -Wall -march=core-avx2 -S
   2
*/

#include "params.h"

double pad[NT+2*NS][NT+2*NS];

#define dens_at_pitch(y,x) pad[(y)][(x)]
#define ten(s) s s s s s s s s s s

extern long ctr;

__attribute__ ((noinline))
void proceed_region
( double yslab[N_SLAB][NT][2],
  double xslab[N_SLAB][NT][2],r
  double stick[N_STICK][4],
  double pad_input[NT][NT],
  double yslab_next[NF][NT][2],
  double xslab_next[N_SLAB][NT][2],
  double stick_next[N_SLAB][4],
  double pad_next[N_STICK][NT]
  )
  {
    for(int y=0;y<NT;++y) {
      for(int x=0;x<NT;++x) {
        pad[y][x] = pad_input[y][x];
      }
    }



    for(int t=0; t<NF; ++t){
      for (int i=0;i<NT;++i) {
        pad[i][NT] = yslab[t][i][0];
        pad[i][NT+1] = yslab[t][i][1];
        pad[NT][i] = xslab[t][i][0];
        pad[NT+1][i] = xslab[t][i][1];
      }
      pad[NT][NT]=stick[t][0];
      pad[NT][NT+1]=stick[t][1];
      pad[NT+1][NT]=stick[t][2];
      pad[NT+1][NT+1]=stick[t][3];

      for(int y=1;y<=NT;++y) {
        for(int x=1;x<=NT;++x) {
          asm volatile("#kernel");
          pad[y-1][x-1] =
            0.5*dens_at_pitch(y,x)+
            0.125*((dens_at_pitch(y,x-1)+dens_at_pitch(y,x+1))
                   +(dens_at_pitch(y-1,x)+dens_at_pitch(y+1,x)));
          ++ctr;
          // ten(asm volatile("nop");)
        }
      }

      for (int i=0;i<NT;++i) {
        yslab_next[t][i][0] = pad[i][0]  ;
        yslab_next[t][i][1] = pad[i][1]  ;
        xslab_next[t][i][0] = pad[0][i]  ;
        xslab_next[t][i][1] = pad[1][i]  ;
      }
      stick[t][0] = pad[0][0];
      stick[t][1] = pad[0][1];
      stick[t][2] = pad[1][0];
      stick[t][3] = pad[1][1];
    }

    for(int y=0;y<NT;++y) {
      for(int x=0;x<NT;++x) {
        pad_next[y][x] = pad[y][x];
      }
    }
  }
