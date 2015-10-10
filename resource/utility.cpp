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

inline int mask_y(int x) {
  return mod_floor(x,NY);
}

inline int mask_x(int x) {
  return mod_floor(x,NX);
}
