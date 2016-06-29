module lib
  implicit none

  integer :: i
  integer :: mpi_err, req_recv, req_send
  type Kozo
     double precision, dimension(42) :: U
     double precision, dimension(42) :: V     
  end type Kozo

  type(Kozo) :: Iriguchi
  type(Kozo) :: Deguchi


end module lib
