#include <iostream>
#include "initial-condition.hpp"

#define NX 1
#define NY 50
#define NZ 50

double U[NX][NY][NZ];
double V[NX][NY][NZ];


int main () {
  fill_initial_condition<NX,NY,NZ,double>(U,V);
  for (int y=0;y<NY;++y) {
    for (int z=0;z<NZ;++z) {
      std::cout<<int(U[0][y][z]);
    }
    std::cout << std::endl;
  }
}
