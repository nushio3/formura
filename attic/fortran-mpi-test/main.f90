program main
  implicit none
  include "mpif.h"

  integer :: i
  integer :: mpi_err, req_recv, req_send
  double precision, dimension(42) :: U
  double precision, dimension(42) :: V

  call mpi_init(mpi_err)

  do i = 1, 42
     U(i) = i*(i+1)
  end do
  
  call mpi_irecv(V, 42*8, MPI_BYTE, 0, 0, mpi_comm_world, req_recv ,mpi_err)
  call mpi_isend(U, 42*8, MPI_BYTE, 0, 0, mpi_comm_world, req_send ,mpi_err)
  call mpi_wait(req_recv)

  do i = 1, 42
     print *, V(i)
  end do

  call mpi_finalize(mpi_err)

end program main
