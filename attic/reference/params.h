const int NX=1024, NY= 1024, N_TIME=1024;
//const int NX=512, NY= 512, N_TIME=512;
const int X_MASK = NX-1, Y_MASK = NY-1;

const int NS=1;
const int NT=64;
const int T_MASK = NT-1;
const int NG=NT/NS/2; // 32
const int NTO=NX/NT; // 16
const int NF=NTO*NG; // 16*32 = 512


const int N_SLAB = NF+NG;
const int N_STICK = NF+NG;
