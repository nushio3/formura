#include <iostream>
#include <cstdlib>
#include <climits>
using namespace std;

const int NT = 80;
const int NS = 1;
const int T_FINAL = INT_MAX;

typedef char Cell;

Cell buf[NT+2*NS][NT+2*NS];

int main () {

  // initialization
  for (int y = 0; y < NT; ++y) {
    for (int x = 0; x < NT; ++x) {
      buf[y][x] =rand() < INT_MAX/2;
    }
  }
  /* buf[10][21] = 1;
  buf[11][22] = 1;
  buf[12][20] = 1;
  buf[12][21] = 1;
  buf[12][22] = 1;
  */
  for (int t = 0 ; t < T_FINAL; ++t ) {
    for (int x = 0; x < NT+2*NS; ++x) {
      buf[NT  ][x] = buf[0][x];
      buf[NT+1][x] = buf[1][x];
    }
    for (int y = 0; y < NT+2*NS; ++y) {
      buf[y][NT  ] = buf[y][0] ;
      buf[y][NT+1] = buf[y][1] ;
    }
    for (int y = 0; y < NT; ++y) {
      for (int x = 0; x < NT; ++x) {
        int sum = buf[y][x] + buf[y][x+1]+ buf[y][x+2]+
          buf[y+1][x] + buf[y+1][x+2]+
          buf[y+2][x] + buf[y+2][x+1]+ buf[y+2][x+2];
          buf[y][x] = buf[y+1][x+1] ?
            (sum==2 || sum==3) : sum==3 ;
      }
    }

    for (int y = 0; y < NT; ++y) {
      for (int x = 0; x < NT; ++x) {
        cout << int(buf[y][x]);
      }
      cout << endl;
    }
    system("sleep 0.5; clear");
  }
}
