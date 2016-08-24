//test vectorization
#include <cmath>
#include <iostream>
using namespace std;

const int N=1026;
const int T_MAX = 10240;

double a[N];

int main () {
  for (int x=0;x<N;++x) {
    a[x]=sin(x);
  }
  

  for (int t=0;t<T_MAX;++t) {
    for (int x=0;x<N-2;++x) {
      a[x]=0.16*a[x]+0.68*a[x+1]+0.16*a[x+2];
    }
  }
  cout << a[0] << endl;
}
