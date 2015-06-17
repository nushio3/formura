#include "mxintrin.h"
#include <cmath>
#include <fjcoll.h>
#include <iostream>

using namespace std;

const int NX=1<<16;
const int MASK=NX-1;

double buf[NX];
double buf2[NX];

int big_main () {


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
  return 0;
}



int main (){
  _fjsp_simd_mode_4();

  double work[4];

  const __m256d x=_fjsp_set_v4r8(1.0,2.0,3.0,4.0);		
  const __m256d y=_fjsp_set_v4r8(1.0,2.0,3.0,4.0);		
  const __m256d z=_fjsp_set_v4r8(1.0,2.0,3.0,4.0);		

  __m256d a = _fjsp_add_v4r8(x,y);
  a = _fjsp_mul_v4r8(a,z);
  a = _fjsp_madd_v4r8(a,x,y);
  
  _fjsp_store_v4r8(work, a);		
  
  for (int i = 0; i < 4; ++i) {
    cout << work[i] << endl;
  }

  return 0;
}



