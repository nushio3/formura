#include <iostream>
#include <immintrin.h>
#include <x86intrin.h>

using namespace std;

const __m256i p_fwd = _mm256_set_epi32(0,7,6,5,4,3,2,1);

void inspect(__m256 a) {
  float dest[8];
  _mm256_storeu_ps(&dest[0], a);
  for (int i = 0; i < 8; ++i)
    cout << dest[i] << "\t";
  cout << endl;

}

int main () {
  float src_a[8], dest[8];
  for (int i = 0; i < 8; ++i)
    src_a[i] = float(i+1);
  __m256 a,b,c;
  a = _mm256_loadu_ps(&src_a[0]);
  b = _mm256_set1_ps(100.0f);
  c = a*b+2.0f*a;
  inspect(c);
  __m256 d = _mm256_permutevar8x32_ps(c, _mm256_set_epi32(0,7,6,5,4,3,2,1));
  inspect(d);
  __m256 e = _mm256_permutevar8x32_ps(c, _mm256_set_epi32(6,5,4,3,2,1,0,7));
  inspect(e);
  return 0;
}
