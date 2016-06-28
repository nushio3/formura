program main
  use finalist

  implicit none
  type(Formura_Navigator) :: navi
  Formura_Init(navi, MPI_COMM_WORLD)

  call init()


contains
  subroutine init()

  end subroutine init

end program main
