string algorithm_tag_str = "NoTB";

//double buf[NX][NX];
//double buf2[NX][NX];

//BUFFER DECLS

void solve() {
  double wct1 = second();
  for (int t=1; t <=T_FINAL; ++t) {
    //BUFFER UPDATES
    //BUFFER SWAPS
  }
  double wct2=second();
  benchmark_self_reported_wct = wct2-wct1;
  benchmark_self_reported_delta_t = T_FINAL;
}
