string algorithm_tag_str = "NoTB";

double buf[NX][NX];
double buf2[NX][NX];

void solve() {
  for (int y=0;y<NY;++y) {
    for (int x=0;x<NX;++x) {
      buf[y][x]=dens_initial[y][x];
    }
  }

  double wct1 = second();
  for (int t=1; t <=T_FINAL; ++t) {
    for (int y=0;y<NY;++y) {
      for (int x=0;x<NX;++x) {
        buf2[y][x]=stencil_function
          (buf[y][x],
           buf[(y-1)&Y_MASK][x],
           buf[(y+1)&Y_MASK][x],
           buf[y][(x-1)&X_MASK],
           buf[y][(x+1)&X_MASK]
           );
      }
    }
    swap(buf, buf2);
  }
  double wct2=second();
  for (int y=0;y<NY;++y) {
    for (int x=0;x<NX;++x) {
      dens_final[y][x] = buf[y][x];
    }
  }
  benchmark_self_reported_wct = wct2-wct1;
  benchmark_self_reported_delta_t = T_FINAL;
}
