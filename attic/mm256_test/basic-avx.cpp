#include <iostream>
#include <immintrin.h>
#include <x86intrin.h>

using namespace std;

int main () {
  float src_a[8], dest[8];
  for (int i = 0; i < 8; ++i)
    src_a[i] = float(i);
  __m256 a,b,c;
  a = _mm256_loadu_ps(&src_a[0]);
  b = _mm256_set1_ps(100.0f);
  __m256 mask;
  c = a*b-a;
  mask = _mm256_cmp_ps(c,_mm256_set1_ps(500.0f) , _CMP_LT_OQ);
  c = _mm256_blendv_ps(c,-c,mask);
  c =  _mm256_set1_ps(1.0f) / c;
  _mm256_storeu_ps(&dest[0], c);
  for (int i = 0; i < 8; ++i)
    cout << dest[i] << endl;
  return 0;
}
