program main
  use lib

  implicit none
  include "mpif.h"
  
  integer :: size_var

  call mpi_init(mpi_err)

  do i = 1, 42
     Iriguchi%U(i) = i*(i+1)
  end do

  print *, "sizeof deguchi = ", sizeof(Deguchi)
  size_var = sizeof(Deguchi)
  call mpi_irecv(Deguchi , size_var, MPI_BYTE, 0, 0, mpi_comm_world, req_recv ,mpi_err)
  call mpi_isend(Iriguchi, size_var, MPI_BYTE, 0, 0, mpi_comm_world, req_send ,mpi_err)
  call mpi_wait(req_recv, mpi_status_ignore,mpi_err)

  do i = 1, 42
     print *, Deguchi%U(i)
  end do

  call mpi_finalize(mpi_err)

end program main
