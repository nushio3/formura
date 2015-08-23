typedef float float_plane_t[NX];

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
