#include <cmath>
#include <unistd.h>
#include <iostream>
#include <sstream>
#include "initial-condition.hpp"
#include "naive-integrator.hpp"

#define NX 50
#define NY 40
#define NZ 100

float U[NX][NY][NZ];
float V[NX][NY][NZ];


int main () {
  fill_initial_condition<NX,NY,NZ,float>(U,V);

  naive_integrator<NX,NY,NZ,float> integrator;
  for(int t=0;;++t){
    integrator.proceed(1, U,V);

    std::ostringstream ostr;
    ostr << t << "\n";
    for (int y=0;y<NY;++y) {
      for (int z=0;z<NZ;++z) {
        ostr<<int(std::floor(10*U[NX/2][y][z]));
      }
      ostr << "\n";
    }
    std::cout << ostr.str()<<std::endl;
    usleep(10000);
  }

}
