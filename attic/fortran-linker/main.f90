#include "parameter.h"
program main
  use library

  implicit none



  integer t
  call init()

  call fapp_start("main", 0,0)
  call start_collection("kantai")
  do t = 1, 8*1024
     call proceed(u,v, u_other, v_other)
     call proceed(u_other,v_other, u, v)
  end do
  call stop_collection("kantai")
  call fapp_stop("main", 0,0)

  print *, u(25,25,25), v(25,25,25)
end program main
