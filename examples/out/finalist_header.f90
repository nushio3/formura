module finalist_header
  implicit none


  integer, parameter :: NX = 400
  integer, parameter :: NY = 400
  integer, parameter :: NZ = 400
  double precision, dimension(206,206,206) :: U
  double precision, dimension(206,206,206) :: V
  type Facet_0_0_1_src_0_0_0_dest_0_0_1
     double precision, dimension(200,200,2) :: Ridge_0_0_1_St_U
     double precision, dimension(200,200,2) :: Ridge_0_0_1_St_V
  end type Facet_0_0_1_src_0_0_0_dest_0_0_1
  type(Facet_0_0_1_src_0_0_0_dest_0_0_1) :: Facet_0_0_1_src_0_0_0_dest_0_0_1_Send
  type(Facet_0_0_1_src_0_0_0_dest_0_0_1) :: Facet_0_0_1_src_0_0_0_dest_0_0_1_Recv
  integer ::  req_Facet_0_0_1_src_0_0_0_dest_0_0_1

  type Facet_0_1_0_src_0_0_0_dest_0_1_0
     double precision, dimension(200,2,200) :: Ridge_0_1_0_St_U
     double precision, dimension(200,2,200) :: Ridge_0_1_0_St_V
  end type Facet_0_1_0_src_0_0_0_dest_0_1_0
  type(Facet_0_1_0_src_0_0_0_dest_0_1_0) :: Facet_0_1_0_src_0_0_0_dest_0_1_0_Send
  type(Facet_0_1_0_src_0_0_0_dest_0_1_0) :: Facet_0_1_0_src_0_0_0_dest_0_1_0_Recv
  integer ::  req_Facet_0_1_0_src_0_0_0_dest_0_1_0

  type Facet_0_1_1_src_0_0_0_dest_0_1_1
     double precision, dimension(200,2,2) :: Ridge_0_1_1_St_U
     double precision, dimension(200,2,2) :: Ridge_0_1_1_St_V
  end type Facet_0_1_1_src_0_0_0_dest_0_1_1
  type(Facet_0_1_1_src_0_0_0_dest_0_1_1) :: Facet_0_1_1_src_0_0_0_dest_0_1_1_Send
  type(Facet_0_1_1_src_0_0_0_dest_0_1_1) :: Facet_0_1_1_src_0_0_0_dest_0_1_1_Recv
  integer ::  req_Facet_0_1_1_src_0_0_0_dest_0_1_1

  type Facet_1_0_0_src_0_0_0_dest_1_0_0
     double precision, dimension(2,200,200) :: Ridge_1_0_0_St_U
     double precision, dimension(2,200,200) :: Ridge_1_0_0_St_V
  end type Facet_1_0_0_src_0_0_0_dest_1_0_0
  type(Facet_1_0_0_src_0_0_0_dest_1_0_0) :: Facet_1_0_0_src_0_0_0_dest_1_0_0_Send
  type(Facet_1_0_0_src_0_0_0_dest_1_0_0) :: Facet_1_0_0_src_0_0_0_dest_1_0_0_Recv
  integer ::  req_Facet_1_0_0_src_0_0_0_dest_1_0_0

  type Facet_1_0_1_src_0_0_0_dest_1_0_1
     double precision, dimension(2,200,2) :: Ridge_1_0_1_St_U
     double precision, dimension(2,200,2) :: Ridge_1_0_1_St_V
  end type Facet_1_0_1_src_0_0_0_dest_1_0_1
  type(Facet_1_0_1_src_0_0_0_dest_1_0_1) :: Facet_1_0_1_src_0_0_0_dest_1_0_1_Send
  type(Facet_1_0_1_src_0_0_0_dest_1_0_1) :: Facet_1_0_1_src_0_0_0_dest_1_0_1_Recv
  integer ::  req_Facet_1_0_1_src_0_0_0_dest_1_0_1

  type Facet_1_1_0_src_0_0_0_dest_1_1_0
     double precision, dimension(2,2,200) :: Ridge_1_1_0_St_U
     double precision, dimension(2,2,200) :: Ridge_1_1_0_St_V
  end type Facet_1_1_0_src_0_0_0_dest_1_1_0
  type(Facet_1_1_0_src_0_0_0_dest_1_1_0) :: Facet_1_1_0_src_0_0_0_dest_1_1_0_Send
  type(Facet_1_1_0_src_0_0_0_dest_1_1_0) :: Facet_1_1_0_src_0_0_0_dest_1_1_0_Recv
  integer ::  req_Facet_1_1_0_src_0_0_0_dest_1_1_0

  type Facet_1_1_1_src_0_0_0_dest_1_1_1
     double precision, dimension(2,2,2) :: Ridge_1_1_1_St_U
     double precision, dimension(2,2,2) :: Ridge_1_1_1_St_V
  end type Facet_1_1_1_src_0_0_0_dest_1_1_1
  type(Facet_1_1_1_src_0_0_0_dest_1_1_1) :: Facet_1_1_1_src_0_0_0_dest_1_1_1_Send
  type(Facet_1_1_1_src_0_0_0_dest_1_1_1) :: Facet_1_1_1_src_0_0_0_dest_1_1_1_Recv
  integer ::  req_Facet_1_1_1_src_0_0_0_dest_1_1_1

  type Facet_m1_m1_m1_src_1_1_1_dest_0_0_0
     double precision, dimension(2,2,2) :: Ridge_m1_m1_m1_St_U
     double precision, dimension(2,2,2) :: Ridge_m1_m1_m1_St_V
  end type Facet_m1_m1_m1_src_1_1_1_dest_0_0_0
  type(Facet_m1_m1_m1_src_1_1_1_dest_0_0_0) :: Facet_m1_m1_m1_src_1_1_1_dest_0_0_0_Send
  type(Facet_m1_m1_m1_src_1_1_1_dest_0_0_0) :: Facet_m1_m1_m1_src_1_1_1_dest_0_0_0_Recv
  integer ::  req_Facet_m1_m1_m1_src_1_1_1_dest_0_0_0

  type Facet_m1_m1_0_src_1_1_1_dest_0_0_1
     double precision, dimension(2,2,200) :: Ridge_m1_m1_0_St_U
     double precision, dimension(2,2,200) :: Ridge_m1_m1_0_St_V
  end type Facet_m1_m1_0_src_1_1_1_dest_0_0_1
  type(Facet_m1_m1_0_src_1_1_1_dest_0_0_1) :: Facet_m1_m1_0_src_1_1_1_dest_0_0_1_Send
  type(Facet_m1_m1_0_src_1_1_1_dest_0_0_1) :: Facet_m1_m1_0_src_1_1_1_dest_0_0_1_Recv
  integer ::  req_Facet_m1_m1_0_src_1_1_1_dest_0_0_1

  type Facet_m1_0_m1_src_1_1_1_dest_0_1_0
     double precision, dimension(2,200,2) :: Ridge_m1_0_m1_St_U
     double precision, dimension(2,200,2) :: Ridge_m1_0_m1_St_V
  end type Facet_m1_0_m1_src_1_1_1_dest_0_1_0
  type(Facet_m1_0_m1_src_1_1_1_dest_0_1_0) :: Facet_m1_0_m1_src_1_1_1_dest_0_1_0_Send
  type(Facet_m1_0_m1_src_1_1_1_dest_0_1_0) :: Facet_m1_0_m1_src_1_1_1_dest_0_1_0_Recv
  integer ::  req_Facet_m1_0_m1_src_1_1_1_dest_0_1_0

  type Facet_m1_0_0_src_1_1_1_dest_0_1_1
     double precision, dimension(2,200,200) :: Ridge_m1_0_0_St_U
     double precision, dimension(2,200,200) :: Ridge_m1_0_0_St_V
  end type Facet_m1_0_0_src_1_1_1_dest_0_1_1
  type(Facet_m1_0_0_src_1_1_1_dest_0_1_1) :: Facet_m1_0_0_src_1_1_1_dest_0_1_1_Send
  type(Facet_m1_0_0_src_1_1_1_dest_0_1_1) :: Facet_m1_0_0_src_1_1_1_dest_0_1_1_Recv
  integer ::  req_Facet_m1_0_0_src_1_1_1_dest_0_1_1

  type Facet_0_m1_m1_src_1_1_1_dest_1_0_0
     double precision, dimension(200,2,2) :: Ridge_0_m1_m1_St_U
     double precision, dimension(200,2,2) :: Ridge_0_m1_m1_St_V
  end type Facet_0_m1_m1_src_1_1_1_dest_1_0_0
  type(Facet_0_m1_m1_src_1_1_1_dest_1_0_0) :: Facet_0_m1_m1_src_1_1_1_dest_1_0_0_Send
  type(Facet_0_m1_m1_src_1_1_1_dest_1_0_0) :: Facet_0_m1_m1_src_1_1_1_dest_1_0_0_Recv
  integer ::  req_Facet_0_m1_m1_src_1_1_1_dest_1_0_0

  type Facet_0_m1_0_src_1_1_1_dest_1_0_1
     double precision, dimension(200,2,200) :: Ridge_0_m1_0_St_U
     double precision, dimension(200,2,200) :: Ridge_0_m1_0_St_V
  end type Facet_0_m1_0_src_1_1_1_dest_1_0_1
  type(Facet_0_m1_0_src_1_1_1_dest_1_0_1) :: Facet_0_m1_0_src_1_1_1_dest_1_0_1_Send
  type(Facet_0_m1_0_src_1_1_1_dest_1_0_1) :: Facet_0_m1_0_src_1_1_1_dest_1_0_1_Recv
  integer ::  req_Facet_0_m1_0_src_1_1_1_dest_1_0_1

  type Facet_0_0_m1_src_1_1_1_dest_1_1_0
     double precision, dimension(200,200,2) :: Ridge_0_0_m1_St_U
     double precision, dimension(200,200,2) :: Ridge_0_0_m1_St_V
  end type Facet_0_0_m1_src_1_1_1_dest_1_1_0
  type(Facet_0_0_m1_src_1_1_1_dest_1_1_0) :: Facet_0_0_m1_src_1_1_1_dest_1_1_0_Send
  type(Facet_0_0_m1_src_1_1_1_dest_1_1_0) :: Facet_0_0_m1_src_1_1_1_dest_1_1_0_Recv
  integer ::  req_Facet_0_0_m1_src_1_1_1_dest_1_1_0

  type Formura_Navigator
     integer ::  time_step
     integer :: lower_x
     integer :: upper_x
     integer :: offset_x
     integer :: lower_y
     integer :: upper_y
     integer :: offset_y
     integer :: lower_z
     integer :: upper_z
     integer :: offset_z
     integer :: mpi_comm
     integer :: mpi_my_rank
     integer :: mpi_rank__m1_m1_m1
     integer :: mpi_rank__m1_m1_0
     integer :: mpi_rank__m1_0_m1
     integer :: mpi_rank__m1_0_0
     integer :: mpi_rank__0_m1_m1
     integer :: mpi_rank__0_m1_0
     integer :: mpi_rank__0_0_m1
     integer :: mpi_rank__0_0_1
     integer :: mpi_rank__0_1_0
     integer :: mpi_rank__0_1_1
     integer :: mpi_rank__1_0_0
     integer :: mpi_rank__1_0_1
     integer :: mpi_rank__1_1_0
     integer :: mpi_rank__1_1_1
  end type Formura_Navigator

end module finalist_header
