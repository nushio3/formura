#include <iostream>

#include "params.h"

#define DEBUG

#ifdef DEBUG
struct real{
  double val;
  int t,x,y;
  int valid;

  real(){
    valid=0;
  }
};
#else
typedef double real;
#endif



double dens() {

}

int main () {

}
