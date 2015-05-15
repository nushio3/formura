#include <algorithm>
#include <cassert>
#include <climits>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sstream>

using namespace std;

const int NX=64;
const int T_FINAL = 4096;

const int X_MASK = NX-1;

const int NT=16;
const int NTO=NX/NT;
const int NF=NX/2;

double kabe[NTO][NF+1][2];
double dens_initial[NX];
double dens_final[NX];
double yuka[NTO+1][1][NT+2];

union DII{
  double as_double;
  int as_ints[2];
};

string ppr(double x) {
  ostringstream oss;
  DII c; c.as_double=x;
  oss << c.as_ints[0] << " " << c.as_ints[1];
  return oss.str();
}

double deadbeef;

const bool debug_mode = true;

void initialize() {
  DII conv;
  conv.as_ints[0]=0xdeadbeef; conv.as_ints[1]=0xdeadbeef;
  deadbeef = conv.as_double;

  for (int k=0;k<NTO;++k){
    for (int j=0;j<NF+1;++j) {
      kabe[k][j][0] = kabe[k][j][1] = deadbeef;
    }
  }
  for (int k=0;k<NTO+1;++k){
    for (int j=0;j<NT+2;++j) {
      yuka[k][0][j] = deadbeef;
    }
  }

  for (int x=0; x<NX; ++x) {
    if(debug_mode) {
      conv.as_ints[0]=0; conv.as_ints[1]=x;
      dens_initial[x]=conv.as_double;
    }else{
      dens_initial[x]=(rand()/double(INT_MAX)*2 > 1 ? 1 : 0);
    }
  }
}

void dump(const char* fn) {
  ofstream ofs(fn);
  for(int x=0;x<NX;++x){
    if(debug_mode){
      ofs << x << " " << ppr(dens_final[x]) << endl;
    }else{
      ofs << x << " " << dens_final[x] << endl;
    }
  }
}


inline double stencil_function(double a, double b, double c) {
  if(debug_mode) {
    if(a==deadbeef) return deadbeef;
    if(b==deadbeef) return deadbeef;
    if(c==deadbeef) return deadbeef;
    DII a0,b0,c0,ret;
    a0.as_double=a;
    b0.as_double=b;
    c0.as_double=c;
    if(a0.as_ints[0]==b0.as_ints[0] && b0.as_ints[0]==c0.as_ints[0] &&
       a0.as_ints[1]==((b0.as_ints[1]-1)&X_MASK) && c0.as_ints[1]==((b0.as_ints[1]+1) &X_MASK)) {
      ret.as_ints[0]=b0.as_ints[0]+1;
      ret.as_ints[1]=b0.as_ints[1];
      return ret.as_double;
    } else {
      return deadbeef;
    }
  }else{
    return b+c-b*c-a*b*c;
  }
}
inline void inspect(double a, double b, double c) {
  if(debug_mode) {
    DII a0,b0,c0;
    a0.as_double=a;
    b0.as_double=b;
    c0.as_double=c;
    cerr << a0.as_ints[0] << " " << a0.as_ints[1] << endl;
    cerr << b0.as_ints[0] << " " << b0.as_ints[1] << endl;
    cerr << c0.as_ints[0] << " " << c0.as_ints[1] << endl;
  }
}

double ref_buf[NX];
double ref_buf2[NX];
void compute_reference() {
  for (int x=0;x<NX;++x) {
    ref_buf[x]=dens_initial[x];
  }

  for (int t=1; t <=T_FINAL; ++t) {
    for (int x=0;x<NX;++x) {
      ref_buf2[x]=stencil_function
        (ref_buf[(x-1)&X_MASK],ref_buf[x],ref_buf[(x+1)&X_MASK]);
    }
    swap(ref_buf, ref_buf2);
  }
  for (int x=0;x<NX;++x) {
    dens_final[x] = ref_buf[x];
  }

}

double buf[NT+2];  // double buffering
double buf2[NT+2]; // double buffering 2

void pitch_kernel
(int t_orig, int x_orig,
 double kabe_in[NF+1][2], double yuka_in[1][NT+2],
 double kabe_out[NF+1][2], double yuka_out[1][NT+2]) {
  for(int t=0; t<NF+NT/2+2;++t) {
    for(int x=0; x<NT+2; ++x) {
      int t_k=t, x_k = x-t;
      int t_dash = (t_k-x_k)>>1;
      int x_dash = t_k + x_k;
      double ret=0;

      if (x>=2 && t+t_orig>0) {
        ret = stencil_function(buf[x-2],buf[x-1],buf[x]);
        if(debug_mode && x_dash>=2 && x_dash<NT+2&&t_dash >=1 && t_dash<NF+1&& ret==deadbeef) {

          inspect(buf[x-2],buf[x-1],buf[x]);
          cerr << "deadbeef at"
               << " t_orig = " << t_orig
               << " x_orig = " << x_orig
               << " t = " << t
               << " x = " << x
               << endl;
          assert(false);
        }
        cerr << "keisan" << endl;
      }
      if (t_dash == 0) {
        ret = yuka_in[0][x_dash];
        cerr << "yuka" << endl;
      }
      if (x_dash < 2 && t_dash >=0 && t_dash < NF+1) {
        ret = kabe_in[t_dash][x];
        cerr << "kabe " << t_dash << " " << x << endl;
      }
      if (t_k + t_orig == 0) {
        ret = dens_initial[(x_k+x_orig) & X_MASK];
        cerr << "shoki" << endl;
      }

      if (debug_mode && t+t_orig>0 && x_dash<NT+2 && t_dash >=0 && t_dash<NF+1) {


        DII test; test.as_double=ret;
        if(test.as_ints[0] != t_orig+t_k || test.as_ints[1] != ((x_orig+x_k)&X_MASK) ) {

          double ret2 = stencil_function(buf[x-2],buf[x-1],buf[x]);
          DII test2; test2.as_double=ret2;

          inspect(buf[x-2],buf[x-1],buf[x]);
          cerr << "wrong ret at"
               << " t_orig = " << t_orig
               << " x_orig = " << x_orig
               << " t = " << t
               << " x = " << x
               << " exp.t = " << t_orig+t_k
               << " exp.x = " << ((x_orig+x_k)&X_MASK)
               << " ret.t = " << test.as_ints[0]
               << " ret.x = " << test.as_ints[1]
               << " ret2.t = " << test2.as_ints[0]
               << " ret2.x = " << test2.as_ints[1]
               << endl;
          assert(false);
        }


      }

      buf2[x] = ret;
      if (t_dash == NF) {
        yuka_out[0][x_dash] = ret;
      }
      if (x_dash >= NT && t_dash>=0 && t_dash <NF+1) {
        kabe_out[t_dash][x_dash-NT] = ret;
        if(t_dash==0 && x_dash-NT==1) {
          DII test; test.as_double=ret;
          cerr << "Write to kabe " << test.as_ints[0] << " " << test.as_ints[1] << endl;
        }
      }
      if (t_k + t_orig == T_FINAL  && t_dash>=0 && t_dash <NF+1) {
        dens_final[(x_k+x_orig) & X_MASK] = ret;
        if(ret==deadbeef) {

          cerr << "KUSATTORU" <<x_k << " " << x_orig<< endl;
          assert(false);
        }
      }
    }
    swap(buf, buf2);
  }
  cerr << "KERNEL FINE." << endl;
}

void compute_pitch(){
  int kabe_ctr=0, yuka_ctr=0;

  for(int t_orig=-2*NX; t_orig <= T_FINAL+3*NX; t_orig+=NT/2) {
    int x_orig = t_orig & X_MASK;
    int kabe_ctr_w=(kabe_ctr+1)%NTO;
    int yuka_ctr_w=(yuka_ctr+NTO)%(NTO+1);
    cerr << "KABE IN CHK << " << ppr(kabe[kabe_ctr][0][1]) <<endl;

    pitch_kernel(t_orig, x_orig, kabe[kabe_ctr], yuka[yuka_ctr], kabe[kabe_ctr_w], yuka[yuka_ctr_w]);

    cerr << "KABE OUT CHK << " << ppr(kabe[kabe_ctr_w][0][1]) <<endl;

    kabe_ctr=(kabe_ctr+1)%NTO;
    yuka_ctr=(yuka_ctr+1)%(NTO+1);
  }
}

int main ()
{
  initialize();
  compute_reference();
  dump("test-1d-ref.txt");
  compute_pitch();
  dump("test-1d-pitch.txt");
}
