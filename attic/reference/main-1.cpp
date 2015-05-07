#include <iostream>
#include <fstream>

using namespace std;

const int NX=1024, N_TIME=1024;

const int X_MASK = NX-1;

const int NS=1;
const int NT=64;
const int T_MASK = NT-1;
const int NG=NT/NS/2;
const int NTO=NX/NT;
const int NF=NTO*NG;


const int N_SLAB = NF+2*NG; // some bampei
const int N_STICK = NF+4*NG;

double dens[NX];
double dens_next[NX];


void init() {
  for (int x=0; x<NX; ++x) {
    int p1=x, fac=1, sum=0;
    int pat[4] = {0,1,2,-3};
    while(p1!=0) {
      sum += fac * pat[(p1&3)];
      fac *= 4;p1>>=2;
    }
    dens[x]=sum;
  }
}


void dump(const char* fn) {
  ofstream ofs(fn);
  for(int x=0;x<NX;++x){
    ofs << x << " " << dens[x] << endl;
  }
}

int main ()
{
  init();
  dump("test-1d.txt");
}
