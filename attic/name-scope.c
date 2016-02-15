// requires -std=c99 to compile

#include <stdio.h>
int main(){
  for(int i=0;i<10;++i){
    double a = i*2.4;
    printf("%lf\n", a);
  }
  // this doesn't compile
  //printf("%d\n",i);
}
