#include <iostream>
#include <fstream>
#include <algorithm>
#include <cmath>
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
const int NX=1024;

#include "generated.cpp"

int main() {
  for (int y=0;y<NX;++y) {
    for (int x=0;x<NX;++x) {
      double y2 = y - 0.5*NX;
      dens_hontai[y][x] = y2 > 0.5*NX*sin(sqrt(x + 0.03*pow(y2,2.0)));
    }
  }

  {
  ofstream ofs("initinal_state.txt");
  for (int y=0;y<NX;++y) {
    for (int x=0;x<NX;++x) {
      ofs << x << " " << y << " " << dens_hontai[y][x] << endl;
    }
    ofs << endl;
  }}

  update();

  {  ofstream ofs("final_state.txt");
  for (int y=0;y<NX;++y) {
    for (int x=0;x<NX;++x) {
      ofs << x << " " << y << " " << dens_hontai[y][x] << endl;
    }
    ofs << endl;
  }}

  double meshes = benchmark_self_reported_delta_t * NX * NX;
  cerr << "updated " << meshes << " meshes in " << benchmark_self_reported_wct << " second." << endl;
  cerr << "performance: " << meshes / benchmark_self_reported_wct << " m/s" << endl;
}
