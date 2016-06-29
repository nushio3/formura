program main
  implicit none
  include "mpif.h"
  
  integer :: mpi_err, mpi_req
  double precision, dimension(42) :: U

  call mpi_init(mpi_err)

  call mpi_irecv(U, 42*8, MPI_BYTE, 0, 0, mpi_comm_world, mpi_req ,mpi_err)

  call mpi_finalize(mpi_err)

end program main
