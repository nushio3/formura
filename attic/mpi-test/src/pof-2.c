#include "stdio.h"
#include "stdlib.h"
#include "sys/time.h"
#define NX 32
#define NY 32
#define NZ 32

#define T_MAX 1000000

double aa[NZ][NY][NX];
double ab[NZ][NY][NX];
double ac[NZ][NY][NX];
double ad[NZ][NY][NX];



double wctime() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (double)tv.tv_sec + (double)tv.tv_usec*1e-6;
}


int main () {

  for (int k=0;k<NZ;++k) {
    for (int j=0;j<NY;++j) {
      for (int i=0;i<NX;++i) {
        aa[k][j][i] = rand()/(double)RAND_MAX;
        ab[k][j][i] = rand()/(double)RAND_MAX;
        ac[k][j][i] = rand()/(double)RAND_MAX;
        ad[k][j][i] = rand()/(double)RAND_MAX;
      }
    }
  }

  double t_begin = wctime();

  for (int t=0;t<T_MAX; ++t){
    for (int k=0;k<NZ;++k) {
      for (int j=0;j<NY;++j) {
        for (int i=0;i<NX;++i) {
          double x = aa[k][j][i];
          double y = 3.89*x - 3.88*x*x;
          aa[k][j][i] = y;
          ab[k][j][i] += x*y;
          if (i==0) {
            ac[k][j][i] += x*y;
          }
        }
      }
    }
  }

  double t_end = wctime();
  double flops = (6.0 + 2.0/32.0)*(double)NX*NY*NZ*T_MAX / (t_end - t_begin);

  double sum = 0;
  for (int k=0;k<NZ;++k) {
    for (int j=0;j<NY;++j) {
      for (int i=0;i<NX;++i) {
        sum += aa[k][j][i];
      }
    }
  }

  printf("sum = %lf, wctime = %lf sec\n", sum, t_end - t_begin);
  printf("%lf GFlop/s\n", flops/1e9);
}
