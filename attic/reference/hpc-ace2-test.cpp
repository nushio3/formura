#include "mxintrin.h"
#include <cmath>
#include <fjcoll.h>
#include <iostream>

using namespace std;

const int NX=1<<16;
const int MASK=NX-1;

double buf[NX];
double buf2[NX];

int main () {
  start_collection("nbnxn_kernel_ref");
  cout << "hello" <<endl;
  for (int i=0;i<NX;++i){
    buf[i]=sqrt(0.1*i);
  }
  for (int t=0;t<1024;++t) {
    for (int i=0;i<NX;++i) {
      buf2[i]=0.2*buf[(i-1)&MASK]+0.5*buf[i]+0.3*buf[(i+1)&MASK];
    }
    for (int i=0;i<NX;++i) {
      buf[i]=buf2[i];
    }
  }
  double sum=0;
  for(int i=0;i<NX;++i) {
    sum+=buf[i];
  }
  cout << sum << endl;

  stop_collection("nbnxn_kernel_ref");
}





