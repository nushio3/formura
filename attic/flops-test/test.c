#define N 100
#define ix 10
#define iy 10
#define iz 10
typedef double (*ar)[N][N];

void f(ar Rsc0, ar Rsc1, ar Rsc3){


  double a = Rsc0[ix + (1)][iy + (1)][iz + (1)] /*True */ ;
  double a_0 = Rsc0[ix + (2)][iy + (1)][iz + (1)] /*False */ ;
  double a_1 = Rsc1[ix + (0)][iy + (1)][iz + (1)] /*True */ ;
  double a_2 = Rsc1[ix + (1)][iy + (0)][iz + (1)] /*True */ ;
  double a_3 = Rsc1[ix + (1)][iy + (1)][iz + (0)] /*True */ ;
  double a_4 = Rsc1[ix + (1)][iy + (1)][iz + (1)] /*True */ ;
  double a_5 = Rsc1[ix + (1)][iy + (1)][iz + (2)] /*True */ ;
  double a_6 = Rsc1[ix + (1)][iy + (2)][iz + (1)] /*True */ ;
  double a_7 = Rsc1[ix + (2)][iy + (0)][iz + (1)] /*False */ ;
  double a_8 = Rsc1[ix + (2)][iy + (1)][iz + (0)] /*False */ ;
  double a_9 = Rsc1[ix + (2)][iy + (1)][iz + (1)] /*True */ ;
  double a_10 = Rsc1[ix + (2)][iy + (1)][iz + (2)] /*False */ ;
  double a_11 = Rsc1[ix + (2)][iy + (2)][iz + (1)] /*False */ ;
  double a_12 = Rsc1[ix + (3)][iy + (1)][iz + (1)] /*False */ ;
  double a_13 = (6.0 / 86400.0) /*True */ ;
  double a_14 = (6.0 / 86400.0) /*False */ ;
  double a_15 = (1.0 / 900.0) /*True */ ;
  double a_16 = (1.0 / 900.0) /*False */ ;
  double a_17 = (a_15 * a) /*True */ ;
  double a_18 = (a_16 * a_0) /*False */ ;
  double a_19 = (a_17 * a_4) /*True */ ;
  double a_20 = (a_18 * a_9) /*False */ ;
  double a_21 = (a_19 * a_4) /*True */ ;
  double a_22 = (a_20 * a_9) /*False */ ;
  double a_23 = (a_13 * a_4) /*True */ ;
  double a_24 = (a_14 * a_9) /*False */ ;
  double a_25 = (a_21 - a_23) /*True */ ;
  double a_26 = (a_22 - a_24) /*False */ ;
  double a_27 = (1.0e-3 * 1.0e-3) /*True */ ;
  double a_28 = (1.0e-3 * 1.0e-3) /*False */ ;
  double a_29 = (6.1e-11 / a_27) /*True */ ;
  double a_30 = (6.1e-11 / a_28) /*False */ ;
  double a_31 = (a_4 - a_1) /*True */ ;
  double a_32 = (a_9 - a_4) /*True */ ;
  double a_33 = (a_12 - a_9) /*False */ ;
  double a_34 = (a_32 - a_31) /*True */ ;
  double a_35 = (a_33 - a_32) /*False */ ;
  double a_36 = (a_4 - a_2) /*True */ ;
  double a_37 = (a_6 - a_4) /*True */ ;
  double a_38 = (a_9 - a_7) /*False */ ;
  double a_39 = (a_11 - a_9) /*False */ ;
  double a_40 = (a_37 - a_36) /*True */ ;
  double a_41 = (a_39 - a_38) /*False */ ;
  double a_42 = (a_34 + a_40) /*True */ ;
  double a_43 = (a_35 + a_41) /*False */ ;
  double a_44 = (a_4 - a_3) /*True */ ;
  double a_45 = (a_5 - a_4) /*True */ ;
  double a_46 = (a_9 - a_8) /*False */ ;
  double a_47 = (a_10 - a_9) /*False */ ;
  double a_48 = (a_45 - a_44) /*True */ ;
  double a_49 = (a_47 - a_46) /*False */ ;
  double a_50 = (a_42 + a_48) /*True */ ;
  double a_51 = (a_43 + a_49) /*False */ ;
  double a_52 = (a_29 * a_50) /*True */ ;
  double a_53 = (a_30 * a_51) /*False */ ;
  double a_54 = (a_25 + a_52) /*True */ ;
  double a_55 = (a_26 + a_53) /*False */ ;
  double a_56 = (200.0 * a_54) /*True */ ;
  double a_57 = (200.0 * a_55) /*False */ ;
  double a_58 = (a_4 + a_56) /*True */ ;
  double a_59 = (a_9 + a_57) /*False */ ;

  Rsc3[ix + (1)][iy + (0)][iz + (0)] = (+a_59);
  Rsc3[ix + (0)][iy + (0)][iz + (0)] = (+a_58);

}
