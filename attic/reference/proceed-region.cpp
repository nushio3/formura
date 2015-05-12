/* compile with

   g++ main.cpp proceed-region.cpp -O2 -Wall -march=core-avx2 -S

*/

#include "params.h"
#include <cassert>
#include <iostream>

using namespace std;

double pad[NT+2*NS][NT+2*NS];

#define dens_at_pitch(y,x) pad[(y)][(x)]
#define ten(s) s s s s s s s s s s

extern long ctr;

extern double dens[NY][NX];
extern double dens_next[NY][NX];
extern char virgin[N_TIME][NY][NX];
extern double answer[N_TIME][NY][NX];



__attribute__ ((noinline))
void proceed_region
( int orig_t,
  int orig_y,
  int orig_x,
  double yslab[N_SLAB][NT][2],
  double xslab[N_SLAB][NT][2],
  double stick[N_STICK][4],
  double pad_input[NT][NT],
  double yslab_next[N_SLAB][NT][2],
  double xslab_next[N_SLAB][NT][2],
  double stick_next[N_STICK][4],
  double pad_next[NT][NT]
  )
  {
    int real_y, real_x;


    for(int y=0;y<NT;++y) {
      for(int x=0;x<NT;++x) {
        pad[y][x] = pad_input[y][x];
        int t = 0, real_t = orig_t;
        real_y=(y+t+orig_y)&Y_MASK;
        real_x=(x+t+orig_x)&X_MASK;
        pad[y][x]   = answer[real_t][real_y][real_x];

      }
    }

    for(int t=0; t<NF+NG; ++t){
      int real_t = t + orig_t;

      if (real_t == 0){
        for(int y=0;y<NT+2;++y) {
          for(int x=0;x<NT+2;++x) {
            int real_y = (y+t+orig_y)&Y_MASK;
            int real_x = (x+t+orig_x)&X_MASK;

            pad[y][x] = dens[real_y][real_x];
          }
        }
      } else {
        for (int i=0;i<NT;++i) {
          pad[i][NT]   = xslab[t+NG][i][0];
          pad[i][NT+1] = xslab[t+NG][i][1];
          pad[NT][i]   = yslab[t+NG][i][0];
          pad[NT+1][i] = yslab[t+NG][i][1];
        }
        pad[NT][NT]    =stick[t+2*NG][0];
        pad[NT][NT+1]  =stick[t+2*NG][1];
        pad[NT+1][NT]  =stick[t+2*NG][2];
        pad[NT+1][NT+1]=stick[t+2*NG][3];
      }

      if (real_t >= 0 && real_t < N_TIME && t ==0){
        for (int i=0;i<NT;++i) {
          real_y=(i+t+orig_y)&Y_MASK;
          real_x=(NT+t+orig_x)&X_MASK;
          pad[i][NT]   = answer[real_t][real_y][real_x];
          real_x=(NT+1+t+orig_x)&X_MASK;
          pad[i][NT+1] = answer[real_t][real_y][real_x];
          real_x=(i+t+orig_x)&X_MASK;
          real_y=(NT+t+orig_y)&Y_MASK;
          pad[NT][i]   = answer[real_t][real_y][real_x];
          real_y=(NT+1+t+orig_y)&Y_MASK;
          pad[NT+1][i] = answer[real_t][real_y][real_x];
        }


        for(int y=0;y<NT+2;++y) {
          for(int x=0;x<NT+2;++x) {
            int real_y = (y+t+orig_y)&Y_MASK;
            int real_x = (x+t+orig_x)&X_MASK;
            if (answer[real_t][real_y][real_x] != pad[y][x] ) {
              cerr << "Wrong answer at: "
                   << real_t << " " << real_y << " " <<  real_x << endl
                   << t << " " << y << " " << x << endl;
              cerr << "expected: " << answer[real_t][real_y][real_x] << " got: " <<  pad[y][x] << endl;
              assert(false);
            }

          }
        }
      }

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


      if (real_t == N_TIME-1){
        for(int y=0;y<NT;++y) {
          for(int x=0;x<NT;++x) {
            int real_y = (y+t+orig_y)&Y_MASK;
            int real_x = (x+t+orig_x)&X_MASK;
            dens_next[real_y][real_x] = pad[y][x];
          }
        }
      }
      if (t==NF-1) {
        for(int y=0;y<NT;++y) {
          for(int x=0;x<NT;++x) {
            pad_next[y][x] = pad[y][x];
          }
        }
      }


      for (int i=0;i<NT;++i) {
        yslab_next[t+1][i][0] = pad[i][0]  ;
        yslab_next[t+1][i][1] = pad[i][1]  ;
        xslab_next[t+1][i][0] = pad[0][i]  ;
        xslab_next[t+1][i][1] = pad[1][i]  ;
      }

      stick_next[t+1][0] = pad[0][0];
      stick_next[t+1][1] = pad[0][1];
      stick_next[t+1][2] = pad[1][0];
      stick_next[t+1][3] = pad[1][1];

    }

  }
