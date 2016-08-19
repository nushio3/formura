#include <unistd.h>
#include <iostream>
#include "initial-condition.hpp"
#include "naive-integrator.hpp"

#define NX 1
#define NY 50
#define NZ 50

float U[NX][NY][NZ];
float V[NX][NY][NZ];


int main () {
  fill_initial_condition<NX,NY,NZ,float>(U,V);

  naive_integrator<NX,NY,NZ,float> integrator;
  while(true){
    integrator.proceed(1, U,V);
    for (int y=0;y<NY;++y) {
      for (int z=0;z<NZ;++z) {
        std::cout<<int(U[0][y][z]);
      }
      std::cout << std::endl;
    }
    usleep(12345);
  }

}
