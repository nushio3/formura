
const int NX=512, NY= 512, N_TIME=512;
const int X_MASK = NX-1, Y_MASK = NY-1;

const int NS=1;
const int NT=64;
const int T_MASK = NT-1;
const int NG=NT/NS/2; // 32
const int NTO=NX/NT; // 16
const int NF=NTO*NG; // 16*32 = 512


const int N_SLAB = NF+2*NG; // some bampei
const int N_STICK = NF+4*NG;



/*
const int NX=64, NY= 64, N_TIME=64;
const int X_MASK = NX-1, Y_MASK = NY-1;

const int NS=1;
const int NT=16;
const int T_MASK = NT-1;
const int NG=NT/NS/2; // 8
const int NTO=NX/NT; // 4
const int NF=NTO*NG; // 32


const int N_SLAB = NF+2*NG; // some bampei
const int N_STICK = NF+4*NG;
*/
