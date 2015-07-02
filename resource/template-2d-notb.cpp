string algorithm_tag_str = "NoTB";

const int NX=4096;

type double double_plane_t [NX];

//BUFFER DECLS

void solve() {
  double wct1 = second();
  //POINTER DECLS
  for (int t=1; t <=T_FINAL; ++t) {
    for (int j=1;j<NX-1;++j) {
    for (int i=1;i<NX-1;++i) {
    //BUFFER UPDATES
    //BUFFER SWAPS
    }
    }
  }
  double wct2=second();
  benchmark_self_reported_wct = wct2-wct1;
  benchmark_self_reported_delta_t = T_FINAL;
}
