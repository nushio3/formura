#include "mpi.h"
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <set>
#include <string>
#include <vector>
#include <map>
using namespace std;

const int element_shape_x = 5;
const int element_shape_y = 6;

const int mpi_shape_x = 4;
const int mpi_shape_y = 3;

const int shape_x = element_shape_x * mpi_shape_x;
const int shape_y = element_shape_y * mpi_shape_y;
const int shape_t = 30;

int mpi_rank;
int mpi_size;

int wrap_x(const int x) {
  return (x+shape_x)%shape_x;
}
int wrap_y(const int y) {
  return (y+shape_y)%shape_y;
}
int irand(const int hi) {
  return floor(rand()/double(RAND_MAX)*hi);
}
enum Direction{
  TP,
  XP,
  XM,
  YP,
  YM
};


struct Region{
  int t,x,y;
  Region(int t,int x,int y) : t(t), x(wrap_x(x)), y(wrap_y(y)) {}

  bool operator==(const Region &other) {
    return other.t==t && other.x==x && other.y==y;
  }
  bool operator!=(const Region &other) {
    return !(*this == other);
  }
  bool operator<(const Region &other) {
    return t<other.t || (t==other.t && (x<other.x || (x==other.x && y<other.y)));
  }
};

ostream& operator<<(ostream& ostr, const Region& r) {
  ostr << "("
       << r.t << ","
       << r.x << ","
       << r.y << ")";
  return ostr;
}


struct Facet{
  Direction d;
  int t,x,y;
  Facet(Direction d,int t,int x,int y) : d(d), t(t), x(wrap_x(x)), y(wrap_y(y)) {}
  bool operator<(const Facet &other) const {
    return d<other.d || (d==other.d && (t<other.t || (t==other.t && (x<other.x || (x==other.x && y<other.y)))));
  }

};
ostream& operator<<(ostream& ostr, const Facet& f) {
  ostr << "("
       << f.d << ","
       << f.t << ","
       << f.x << ","
       << f.y << ")";
  return ostr;
}



Region random_region() {
  return Region(irand(shape_t), irand(shape_x), irand(shape_y));
}

Region prev_region(const Facet &f) {
  return Region(f.t, f.x, f.y);
}
Region next_region(const Facet &f) {
  switch(f.d) {
  case TP:
    return Region(f.t + 1, f.x, f.y);
  case XP:
    return Region(f.t, f.x + 1, f.y);
  case XM:
    return Region(f.t, f.x - 1, f.y);
  case YP:
    return Region(f.t, f.x, f.y + 1);
  case YM:
    return Region(f.t, f.x, f.y - 1);
  }
}


vector<Facet> prev_facets(const Region &r) {
  vector<Facet> ret;
  if (r.t < shape_t) ret.push_back(Facet(TP, r.t - 1, r.x, r.y));
  if (r.t%2 != r.x%2) {
    ret.push_back( Facet(XP, r.t, r.x-1, r.y) );
    ret.push_back( Facet(XM, r.t, r.x+1, r.y) );
  }
  if (r.t%2 != r.y%2) {
    ret.push_back( Facet(YP, r.t, r.x, r.y-1) );
    ret.push_back( Facet(YM, r.t, r.x, r.y+1) );
  }
  return ret;
}
vector<Facet> next_facets(const Region &r) {
  vector<Facet> ret;
  if (r.t < shape_t -1) ret.push_back(Facet(TP, r.t, r.x, r.y));
  if (r.t%2 == r.x%2) {
    ret.push_back( Facet(XP, r.t, r.x, r.y) );
    ret.push_back( Facet(XM, r.t, r.x, r.y) );
  }
  if (r.t%2 == r.y%2) {
    ret.push_back( Facet(YP, r.t, r.x, r.y) );
    ret.push_back( Facet(YM, r.t, r.x, r.y) );
  }
  return ret;
}

int rank_assingment(const Region &r) {
  int rx = r.x / element_shape_x;
  int ry = r.y / element_shape_y;
  return ry * mpi_shape_x + rx;
}

vector<Facet> initial_facets() {
  vector<Facet> ret;

  int rx = mpi_rank % mpi_shape_x;
  int ry = mpi_rank % mpi_shape_y;
  for (int j = 0; j < element_shape_y; ++j) {
    for (int i = 0; i < element_shape_x; ++i) {
      ret.push_back(Facet(TP,-1,rx*element_shape_x+i, ry*element_shape_y+j));
    }
  }
  return ret;
}

set<Facet> facet_pool;

void add_facet_event(const Facet &f) {
  facet_pool.insert(f);
  cout << "recv facet: " << f << endl;
  Region r = next_region(f);
  vector<Facet> fs = prev_facets(r);
  bool all_found = true;
  for (int i=0;i<fs.size();++i) {
    set<Facet>::iterator fit = facet_pool.find(fs[i]);
    if(fit == facet_pool.end()){
      all_found = false;
      break;
    }
  }
  if (all_found) {
    cout << "invoke region: " << r << endl;
  }
}

int test(){
  cout << "ping" << endl;
  cout << "pong" << endl;

  cout << sizeof(Region) << endl;
  cout << sizeof(Facet) << endl;

  for(int i=0;i<1000000; ++i) {
    Region r = random_region();
    vector<Facet> fs = next_facets(r);
    for (int j=0; j< fs.size(); ++j) {
      Facet &f=fs[j];
      if(prev_region(f) != r) {
        cout << "wrong facet " << endl;
        cout << r << endl;
      }
    }
  }


  for(int i=0;i<1000000; ++i) {
    Region r = random_region();
    vector<Facet> fs = prev_facets(r);
    for (int j=0; j< fs.size(); ++j) {
      Facet &f=fs[j];
      if(next_region(f) != r) {
        cout << "wrong facet " << endl;
        cout << r << endl;
        cout << next_region(f) << endl;
        return -1;
      }
    }
  }

  {
    map<int, int> ctr;
    for(int j=0;j<shape_y; ++j) {
      for(int i=0;i<shape_x; ++i) {
        Region r(0,i,j);
        ctr[rank_assingment(r)]++;
      }
    }
    for(map<int,int>::iterator it=ctr.begin(); it!=ctr.end();++it) {
      cout << it->first << " " << it->second << endl;
    }

  }
  return 0;
}

int main(int argc, char **argv){
  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &mpi_size);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_rank);

  vector<Facet> ifs = initial_facets();
  for (int i=0;i<ifs.size(); ++i) {
    add_facet_event(ifs[i]);
  }

  MPI_Finalize();

}
