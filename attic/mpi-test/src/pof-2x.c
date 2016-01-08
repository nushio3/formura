#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <fj_tool/fapp.h>
#define NX 68
#define NY 64
#define NZ 64

#define T_MAX 10000

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
  start_collection("region");

#define LOOPBODY(PRE_HOOK,POST_HOOK)	 \
    double x = aa[k][j][i];		 \
					 \
    PRE_HOOK;				 \
					 \
    double x0 = 0.890*x - 0.880*x*x;	 \
    double x1 = 0.889*x - 0.881*x*x;	 \
    double x2 = 0.888*x - 0.882*x*x;	 \
					 \
    x0 = 3.89*x0 - 3.88*x0*x0;		 \
    x1 = 3.89*x1 - 3.88*x1*x1;		 \
    x2 = 3.89*x2 - 3.88*x2*x2;		 \
					 \
    x0 = 3.89*x0 - 3.88*x0*x0;		 \
    x1 = 3.89*x1 - 3.88*x1*x1;		 \
    x2 = 3.89*x2 - 3.88*x2*x2;		 \
					 \
    x0 = 3.89*x0 - 3.88*x0*x0;		 \
    x1 = 3.89*x1 - 3.88*x1*x1;		 \
    x2 = 3.89*x2 - 3.88*x2*x2;		 \
					 \
    x0 = 3.89*x0 - 3.88*x0*x0;		 \
    x1 = 3.89*x1 - 3.88*x1*x1;		 \
    x2 = 3.89*x2 - 3.88*x2*x2;		 \
					 \
    x0 = 3.89*x0 - 3.88*x0*x0;		 \
    x1 = 3.89*x1 - 3.88*x1*x1;		 \
    x2 = 3.89*x2 - 3.88*x2*x2;		 \
					 \
					 \
    aa[k][j][i] = (x0*x1+x2)/2;		 \
					 \
    POST_HOOK;				 \



  for (int t=0;t<T_MAX; ++t){
    for (int k=0;k<NZ;++k) {
      for (int j=0;j<NY;++j) {

	for(int i=0; i<2; ++i){
	  LOOPBODY(x=ab[k][j][i],	{}) ;
	}
	for (int i=2;i<NX-2;++i) {
	  LOOPBODY({},{});
	}
	for(int i=NX-2; i<NX; ++i){
	  LOOPBODY({}, ab[k][j][i] *= x1) ;
	}
      }
    }
  }

  stop_collection("region");
  double t_end = wctime();
  double flops = (6 * 12 + 3.0)*(double)NX*NY*NZ*T_MAX / (t_end - t_begin);

  double sum = 0;
  for (int k=0;k<NZ;++k) {
    for (int j=0;j<NY;++j) {
      for (int i=0;i<NX;++i) {
        sum += aa[k][j][i] + ab[k][j][i] + ac[k][j][i] + ad[k][j][i];
      }
    }
  }

  printf("sum = %lf, wctime = %lf sec\n", sum, t_end - t_begin);
  printf("%lf GFlop/s\n", flops/1e9);
}
