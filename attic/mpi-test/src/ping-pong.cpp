#include <cmath>
#include <cstdlib>
#include <iostream>
#include "mpi.h"
#include "pipe.h"
#include <pthread.h>
#include <set>
#include <string>
#include "unistd.h"
#include <vector>
#include <map>

using namespace std;


const int element_shape_x = 5;
const int element_shape_y = 6;

const int mpi_shape_x = 4;
const int mpi_shape_y = 3;



//// const int element_shape_x = 20;
//// const int element_shape_y = 18;
////
//// const int mpi_shape_x = 1;
//// const int mpi_shape_y = 1;


const int shape_x = element_shape_x * mpi_shape_x;
const int shape_y = element_shape_y * mpi_shape_y;
const int shape_t = 300;

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
  Region() {}
  Region(int t,int x,int y) : t(t), x(wrap_x(x)), y(wrap_y(y)) {}

  bool operator==(const Region &other) const {
    return other.t==t && other.x==x && other.y==y;
  }
  bool operator!=(const Region &other) {
    return !(*this == other);
  }
  bool operator<(const Region &other) const {
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
  Facet() {}
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

struct Task {
  Region region;
  vector<Facet> facets;
  Task() {}
  Task(const Region& r) : region(r), facets() {}
  Task(const Region& r, const vector<Facet> fs) : region(r), facets(fs) {}
  bool operator<(const Task &other) const {
    return region < other.region;
  }
};


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
  if (r.t&1 != r.x%2) {
    ret.push_back( Facet(XP, r.t, r.x-1, r.y) );
    ret.push_back( Facet(XM, r.t, r.x+1, r.y) );
  }
  if (r.t&1 != r.y%2) {
    ret.push_back( Facet(YP, r.t, r.x, r.y-1) );
    ret.push_back( Facet(YM, r.t, r.x, r.y+1) );
  }/*
  if (r == Region(0,6,15)) {
    for (const auto &v : ret) {
      cout << v << endl;
    }
    exit(0);
    }*/

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
set<Task> task_pool;

pipe_producer_t* inbound_facet_producer;
pipe_consumer_t* inbound_facet_consumer;
pipe_producer_t* outbound_facet_producer;
pipe_consumer_t* outbound_facet_consumer;
pipe_producer_t* task_producer;
pipe_consumer_t* task_consumer;

void add_facet_event(const Facet &f) {
  facet_pool.insert(f);
  Region r = next_region(f);
  vector<Facet> fs = prev_facets(r);
  bool all_found = true;
  Task task(r);
  for (int i=0;i<fs.size();++i) {
    set<Facet>::iterator fit = facet_pool.find(fs[i]);
    if(fit == facet_pool.end()){
      cerr << "for region : " << r << " missing facet:  " << (fs[i]) << endl;
      all_found = false;
      break;
    } else {
      task.facets.push_back(*fit);
    }
  }
  if (all_found) {
    pipe_push(task_producer, &task, 1);
  }
}

void send_facet(const Facet &f) {
  int dest = rank_assingment(next_region(f));
  if (dest == mpi_rank) {
    pipe_push(inbound_facet_producer, &f, 1);
  } else {
    pipe_push(outbound_facet_producer, &f, 1);
  }
}

void actually_compute_the_task (const Task &task) {
  cerr << "rank " << mpi_rank << " computes region: " << task.region << endl;
  usleep(1000000);
}

void* thread_process_task(void* arg) {

  Task task;
  for(;;) {
    size_t n = pipe_pop(task_consumer, &task, 1);
    if (n <= 0) return NULL;
    actually_compute_the_task(task);

    vector<Facet> next_fs = next_facets(task.region);
    for (int i=0;i<next_fs.size();++i) {
      send_facet(next_fs[i]);
    }
    for (int i=0;i<task.facets.size();++i) {
      facet_pool.erase(task.facets[i]);
    }
  }
}

void* thread_recv(void* arg) {
  Facet f;
  MPI_Status status;
  for(;;) {
    MPI_Recv(&f, sizeof(Facet), MPI_BYTE, MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
    pipe_push(inbound_facet_producer, &f, 1);
  }
}
void* thread_send(void* arg) {
  Facet f;
  for(;;) {
    size_t n = pipe_pop(outbound_facet_consumer, &f, 1);
    if(n<=0) return NULL;
    int dest=rank_assingment(next_region(f));
    MPI_Send((void*)(&f), sizeof(Facet), MPI_BYTE, dest, 0, MPI_COMM_WORLD);
  }
}
void* thread_create_task(void* arg) {
  Facet f;
  for(;;) {
    size_t n = pipe_pop(inbound_facet_consumer, &f, 1);
    if(n<=0) return NULL;
    add_facet_event(f);
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

void init_pipes() {
  {
    pipe_t* p = pipe_new(sizeof(Facet), 0);
    inbound_facet_producer = pipe_producer_new(p);
    inbound_facet_consumer = pipe_consumer_new(p);
    pipe_free(p);
  }
  {
    pipe_t* p = pipe_new(sizeof(Facet), 0);
    outbound_facet_producer = pipe_producer_new(p);
    outbound_facet_consumer = pipe_consumer_new(p);
    pipe_free(p);
  }
  {
    pipe_t* p = pipe_new(sizeof(Task), 0);
    task_producer = pipe_producer_new(p);
    task_consumer = pipe_consumer_new(p);
    pipe_free(p);
  }
}

void free_pipes() {
  pipe_producer_free(inbound_facet_producer);
  pipe_consumer_free(inbound_facet_consumer);
  pipe_producer_free(outbound_facet_producer);
  pipe_consumer_free(outbound_facet_consumer);
  pipe_producer_free(task_producer);
  pipe_consumer_free(task_consumer);
}

int main(int argc, char **argv){
  const int required = 2; //MPI_THREAD_MULTIPLE
  int provided;
  MPI_Init_thread(&argc, &argv, required, &provided);
  if (provided < required) {
    cerr << "Uwa, hikusugi? :" << provided <<endl;
    MPI_Abort(MPI_COMM_WORLD, 42);
  }


  MPI_Comm_size(MPI_COMM_WORLD, &mpi_size);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_rank);

  init_pipes();

  pthread_t tid_recv; pthread_create(&tid_recv, NULL, thread_recv, NULL);
  pthread_t tid_send; pthread_create(&tid_send, NULL, thread_send, NULL);
  pthread_t tid_task; pthread_create(&tid_task, NULL, thread_create_task, NULL);

  vector<Facet> ifs = initial_facets();
  for (int i=0;i<ifs.size(); ++i) {
    add_facet_event(ifs[i]);
  }

  thread_process_task(NULL);



  free_pipes();

  MPI_Finalize();
}
