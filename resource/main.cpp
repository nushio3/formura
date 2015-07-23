#include <iostream>
#include <algorithm>
#include <sys/time.h>

using namespace std;

static double second()
{
  struct timeval tm;
  double t ;

  static int base_sec = 0,base_usec = 0;

  gettimeofday(&tm, NULL);

  if(base_sec == 0 && base_usec == 0)
    {
      base_sec = tm.tv_sec;
      base_usec = tm.tv_usec;
      t = 0.0;
  } else {
    t = (double) (tm.tv_sec-base_sec) +
      ((double) (tm.tv_usec-base_usec))/1.0e6 ;
  }
  return t ;
}

double  benchmark_self_reported_wct;
double  benchmark_self_reported_delta_t;

const int T_FINAL = 120;

#include "generated.cpp"

int main() {
  cout << "hellow" << endl;
}
