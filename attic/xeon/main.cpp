#include "initial-condition.hpp"

#define NX 1
#define NY 50
#define NZ 50

double U[NX][NY][NZ];
double V[NX][NY][NZ];


int main () {
  fill_initial_condition<NX,NY,NZ,double>(U,V);
}
