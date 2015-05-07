const int NX=1024, NY= 1024, N_TIME=1024;
const int X_MASK = NX-1, Y_MASK = NY-1;

const int NS=1;
const int NT=64;
const int NG=NT/NS/2; // 32
const int NTO=NX/NT; // 16
const int NF=NX/NT*NG; // 16*32 = 512


double pad[NT+2*NS][NT+2*NS];

#define dens_at_pitch(y,x) pad[(y)][(x)]

extern long ctr;

__attribute__ ((noinline))
void proceed_region
( double yslab[NF][NT][2],
  double xslab[NF][NT][2],
  double stick[NF][4],
  double yslab_next[NF][NT][2],
  double xslab_next[NF][NT][2],
  double stick_next[NF][4]
) {
  for(int t=0; t<NF; ++t){
    for (int i=0;i<NT;++i) {
      pad[i][NT] = yslab[t][i][0];
      pad[i][NT+1] = yslab[t][i][1];
      pad[NT][i] = xslab[t][i][0];
      pad[NT+1][i] = xslab[t][i][1];
    }
    pad[NT][NT]=stick[t][0];
    pad[NT][NT+1]=stick[t][1];
    pad[NT+1][NT]=stick[t][2];
    pad[NT+1][NT+1]=stick[t][3];

    for(int y=1;y<=NT;++y) {
      for(int x=1;x<=NT;++x) {
        pad[y-1][x-1] =
          0.5*dens_at_pitch(y,x);
        0.125*((dens_at_pitch(y,x-1)+dens_at_pitch(y,x+1))
               +(dens_at_pitch(y-1,x)+dens_at_pitch(y+1,x)));
        ++ctr;
        asm volatile("#hello");
      }
    }

    for (int i=0;i<NT;++i) {
      yslab_next[t][i][0] = pad[i][0]  ;
      yslab_next[t][i][1] = pad[i][1]  ;
      xslab_next[t][i][0] = pad[0][i]  ;
      xslab_next[t][i][1] = pad[1][i]  ;
    }
    stick[t][0] = pad[0][0];
    stick[t][1] = pad[0][1];
    stick[t][2] = pad[1][0];
    stick[t][3] = pad[1][1];
  }
}
