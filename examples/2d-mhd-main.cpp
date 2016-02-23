#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "pearson.h"

const int T_MAX=1000;

float frand() {
  return rand() / float(RAND_MAX);
}

void init() {
  for(int x = navi.lower_x; x < navi.upper_x; ++x) {
    for(int y = navi.lower_y; y < navi.upper_y; ++y) {
      dens[x][y] = 1;
    }
  }
  for (int x = 18; x < 38; ++x) {
    for (int y = 58; y < 78; ++y) {
      dens[x][y] = 0.5+0.01*frand();
    }
  }
}



int main ()
{

}
