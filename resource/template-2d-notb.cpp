typedef float float_plane_t[NX];

inline int mod_floor(int x, int y) {
    int r = x%y;
    if ((r!=0) && ((r<0) != (y<0))) { r += y; }
    return r;
}

inline int div_floor(int x, int y) {
  int q = x/y;
  int r = x%y;
  if ((r!=0) && ((r<0) != (y<0))) --q;
  return q;
}

inline int mask(int x) {
  return mod_floor(x,NX);
}

//BUFFER DECLS

void FUNCTION_NAME() {
  double wct1 = second();
  //POINTER DECLS
  for (int t=1; t <=T_FINAL; ++t) {
    for (int j=0;j<NX;++j) {
      for (int i=0;i<NX;++i) {
        //BUFFER UPDATES
      }
    }
    //BUFFER SWAPS
  }
  double wct2=second();
  benchmark_self_reported_wct = wct2-wct1;
  benchmark_self_reported_delta_t = T_FINAL;
}
