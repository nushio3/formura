#include <algorithm>
#include <iostream>
#include <immintrin.h>
#include <x86intrin.h>

using namespace std;

const __m256i permute_fwd =  _mm256_set_epi32(0,7,6,5,4,3,2,1);
const __m256i permute_bwd =  _mm256_set_epi32(6,5,4,3,2,1,0,7);

const int NX_AVX = 1024;
const int NX = 8 * NX_AVX;

void inspect(__m256 *a) {
  float dest[8];
  for (int i = 0; i < 8; ++i){
    for (int j = 0; j<min(8,NX_AVX); ++j){
      _mm256_storeu_ps(&dest[0], a[j]);
      cout << dest[i];
    }
  }
  cout << endl;
}

#define SWAP swap(a_0,a_next)


__m256 state[NX_AVX];
__m256 state_next[NX_AVX];

__m256 b[NX_AVX];
__m256 c[NX_AVX];

int main(){

  __m256 *a_0 = state, *a_next = state_next;

  for (int i = 0; i < NX_AVX; ++i) {
    state[i] = _mm256_set_ps(0,0,0,0,0,0,0,0);
  }
  state[0] = _mm256_set_ps(0,0,0,1,0,0,0,0);

  for (int t=0;t<1024*1024;++t) {
#include "loop-body.cpp"
  }
    inspect(a_0);

}
