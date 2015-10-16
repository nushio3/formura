typedef float float_plane_t[NX];
typedef double double_plane_t[NX];

//BUFFER DECLS

void FUNCTION_NAME() {
  double wct1 = second();
  //POINTER DECLS
  for (int t=1; t <=T_FINAL; ++t) {
    //BUFFER UPDATES

    //BUFFER SWAPS
  }
  double wct2=second();
  benchmark_self_reported_wct = wct2-wct1;
  benchmark_self_reported_delta_t = T_FINAL;
}
