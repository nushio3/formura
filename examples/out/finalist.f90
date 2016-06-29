module finalist















  use finalist_header
  use finalist_internal_0
  use finalist_internal_1

  implicit none
  include "mpif.h"
  integer :: mpi_err, req_send_iranai
  integer :: mpi_sizeof_value, mpi_comm_value
  integer :: mpi_src_value, mpi_dest_value
contains
  subroutine Formura_decode_mpi_rank (s, ix , iy , iz)
    integer :: ix
    integer :: iy
    integer :: iz

    integer :: s
    iz=mod(s,2)
    s=s/2
    iy=mod(s,2)
    s=s/2
    ix=mod(s,2)
    s=s/2
  end subroutine Formura_decode_mpi_rank

  integer function Formura_encode_mpi_rank (ix,iy,iz)
    integer :: ix
    integer :: iy
    integer :: iz

    integer :: s
    s = 0
    s = s * 2
    s = s + mod((mod(ix,2)+2),2)
    s = s * 2
    s = s + mod((mod(iy,2)+2),2)
    s = s * 2
    s = s + mod((mod(iz,2)+2),2)
    Formura_encode_mpi_rank = s
  end function Formura_encode_mpi_rank

  subroutine Formura_Init (navi,comm)
    type(Formura_Navigator) :: navi
    integer :: comm
    integer ::  ix,iy,iz
    navi%mpi_comm = comm
    call MPI_Comm_rank(comm,navi%mpi_my_rank,mpi_err)
    call Formura_decode_mpi_rank( navi%mpi_my_rank, ix , iy , iz)
    navi%mpi_rank__m1_m1_m1=Formura_encode_mpi_rank( ix+(-1),iy+(-1),iz+(-1))
    navi%mpi_rank__m1_m1_0=Formura_encode_mpi_rank( ix+(-1),iy+(-1),iz+(0))
    navi%mpi_rank__m1_0_m1=Formura_encode_mpi_rank( ix+(-1),iy+(0),iz+(-1))
    navi%mpi_rank__m1_0_0=Formura_encode_mpi_rank( ix+(-1),iy+(0),iz+(0))
    navi%mpi_rank__0_m1_m1=Formura_encode_mpi_rank( ix+(0),iy+(-1),iz+(-1))
    navi%mpi_rank__0_m1_0=Formura_encode_mpi_rank( ix+(0),iy+(-1),iz+(0))
    navi%mpi_rank__0_0_m1=Formura_encode_mpi_rank( ix+(0),iy+(0),iz+(-1))
    navi%mpi_rank__0_0_1=Formura_encode_mpi_rank( ix+(0),iy+(0),iz+(1))
    navi%mpi_rank__0_1_0=Formura_encode_mpi_rank( ix+(0),iy+(1),iz+(0))
    navi%mpi_rank__0_1_1=Formura_encode_mpi_rank( ix+(0),iy+(1),iz+(1))
    navi%mpi_rank__1_0_0=Formura_encode_mpi_rank( ix+(1),iy+(0),iz+(0))
    navi%mpi_rank__1_0_1=Formura_encode_mpi_rank( ix+(1),iy+(0),iz+(1))
    navi%mpi_rank__1_1_0=Formura_encode_mpi_rank( ix+(1),iy+(1),iz+(0))
    navi%mpi_rank__1_1_1=Formura_encode_mpi_rank( ix+(1),iy+(1),iz+(1))
    navi%time_step=0
    navi%offset_x=ix*200-2
    navi%lower_x=2
    navi%upper_x=2+200
    navi%offset_y=iy*200-2
    navi%lower_y=2
    navi%upper_y=2+200
    navi%offset_z=iz*200-2
    navi%lower_z=2
    navi%upper_z=2+200
  end subroutine Formura_Init




  subroutine Formura_Forward (navi)
    type(Formura_Navigator) :: navi
    integer :: timestep
    do timestep=0,9
       call Formura_internal()
       call Formura_internal_0()
       call Formura_internal_1()
       mpi_sizeof_value = sizeof(Facet_0_0_1_src_0_0_0_dest_0_0_1_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__0_0_1
       mpi_dest_value = navi%mpi_rank__0_0_m1
       call mpi_irecv( Facet_0_0_1_src_0_0_0_dest_0_0_1_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 0 , mpi_comm_value, req_Facet_0_0_1_src_0_0_0_dest_0_0_1,mpi_err )
       call mpi_isend(Facet_0_0_1_src_0_0_0_dest_0_0_1_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 0 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_0_1_0_src_0_0_0_dest_0_1_0_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__0_1_0
       mpi_dest_value = navi%mpi_rank__0_m1_0
       call mpi_irecv( Facet_0_1_0_src_0_0_0_dest_0_1_0_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 1 , mpi_comm_value, req_Facet_0_1_0_src_0_0_0_dest_0_1_0,mpi_err )
       call mpi_isend(Facet_0_1_0_src_0_0_0_dest_0_1_0_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 1 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_0_1_1_src_0_0_0_dest_0_1_1_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__0_1_1
       mpi_dest_value = navi%mpi_rank__0_m1_m1
       call mpi_irecv( Facet_0_1_1_src_0_0_0_dest_0_1_1_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 2 , mpi_comm_value, req_Facet_0_1_1_src_0_0_0_dest_0_1_1,mpi_err )
       call mpi_isend(Facet_0_1_1_src_0_0_0_dest_0_1_1_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 2 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_1_0_0_src_0_0_0_dest_1_0_0_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__1_0_0
       mpi_dest_value = navi%mpi_rank__m1_0_0
       call mpi_irecv( Facet_1_0_0_src_0_0_0_dest_1_0_0_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 3 , mpi_comm_value, req_Facet_1_0_0_src_0_0_0_dest_1_0_0,mpi_err )
       call mpi_isend(Facet_1_0_0_src_0_0_0_dest_1_0_0_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 3 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_1_0_1_src_0_0_0_dest_1_0_1_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__1_0_1
       mpi_dest_value = navi%mpi_rank__m1_0_m1
       call mpi_irecv( Facet_1_0_1_src_0_0_0_dest_1_0_1_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 4 , mpi_comm_value, req_Facet_1_0_1_src_0_0_0_dest_1_0_1,mpi_err )
       call mpi_isend(Facet_1_0_1_src_0_0_0_dest_1_0_1_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 4 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_1_1_0_src_0_0_0_dest_1_1_0_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__1_1_0
       mpi_dest_value = navi%mpi_rank__m1_m1_0
       call mpi_irecv( Facet_1_1_0_src_0_0_0_dest_1_1_0_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 5 , mpi_comm_value, req_Facet_1_1_0_src_0_0_0_dest_1_1_0,mpi_err )
       call mpi_isend(Facet_1_1_0_src_0_0_0_dest_1_1_0_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 5 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_1_1_1_src_0_0_0_dest_1_1_1_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__1_1_1
       mpi_dest_value = navi%mpi_rank__m1_m1_m1
       call mpi_irecv( Facet_1_1_1_src_0_0_0_dest_1_1_1_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 6 , mpi_comm_value, req_Facet_1_1_1_src_0_0_0_dest_1_1_1,mpi_err )
       call mpi_isend(Facet_1_1_1_src_0_0_0_dest_1_1_1_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 6 , mpi_comm_value, req_send_iranai, mpi_err )

       call mpi_wait(req_Facet_1_0_0_src_0_0_0_dest_1_0_0,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_2()
       call Formura_internal_3()
       call mpi_wait(req_Facet_0_1_0_src_0_0_0_dest_0_1_0,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_4()
       call Formura_internal_5()
       call mpi_wait(req_Facet_1_1_0_src_0_0_0_dest_1_1_0,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_6()
       call Formura_internal_7()
       call mpi_wait(req_Facet_0_0_1_src_0_0_0_dest_0_0_1,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_8()
       call Formura_internal_9()
       call mpi_wait(req_Facet_1_0_1_src_0_0_0_dest_1_0_1,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_10()
       call Formura_internal_11()
       call mpi_wait(req_Facet_0_1_1_src_0_0_0_dest_0_1_1,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_12()
       call Formura_internal_13()
       call mpi_wait(req_Facet_1_1_1_src_0_0_0_dest_1_1_1,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_14()
       call Formura_internal_15()

       ! HALFWAYS 
       call Formura_internal_16()
       call Formura_internal_17()
       call Formura_internal_18()
       mpi_sizeof_value = sizeof(Facet_m1_m1_m1_src_1_1_1_dest_0_0_0_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__m1_m1_m1
       mpi_dest_value = navi%mpi_rank__1_1_1
       call mpi_irecv( Facet_m1_m1_m1_src_1_1_1_dest_0_0_0_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 0 , mpi_comm_value, req_Facet_m1_m1_m1_src_1_1_1_dest_0_0_0,mpi_err )
       call mpi_isend(Facet_m1_m1_m1_src_1_1_1_dest_0_0_0_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 0 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_m1_m1_0_src_1_1_1_dest_0_0_1_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__m1_m1_0
       mpi_dest_value = navi%mpi_rank__1_1_0
       call mpi_irecv( Facet_m1_m1_0_src_1_1_1_dest_0_0_1_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 1 , mpi_comm_value, req_Facet_m1_m1_0_src_1_1_1_dest_0_0_1,mpi_err )
       call mpi_isend(Facet_m1_m1_0_src_1_1_1_dest_0_0_1_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 1 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_m1_0_m1_src_1_1_1_dest_0_1_0_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__m1_0_m1
       mpi_dest_value = navi%mpi_rank__1_0_1
       call mpi_irecv( Facet_m1_0_m1_src_1_1_1_dest_0_1_0_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 2 , mpi_comm_value, req_Facet_m1_0_m1_src_1_1_1_dest_0_1_0,mpi_err )
       call mpi_isend(Facet_m1_0_m1_src_1_1_1_dest_0_1_0_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 2 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_m1_0_0_src_1_1_1_dest_0_1_1_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__m1_0_0
       mpi_dest_value = navi%mpi_rank__1_0_0
       call mpi_irecv( Facet_m1_0_0_src_1_1_1_dest_0_1_1_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 3 , mpi_comm_value, req_Facet_m1_0_0_src_1_1_1_dest_0_1_1,mpi_err )
       call mpi_isend(Facet_m1_0_0_src_1_1_1_dest_0_1_1_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 3 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_0_m1_m1_src_1_1_1_dest_1_0_0_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__0_m1_m1
       mpi_dest_value = navi%mpi_rank__0_1_1
       call mpi_irecv( Facet_0_m1_m1_src_1_1_1_dest_1_0_0_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 4 , mpi_comm_value, req_Facet_0_m1_m1_src_1_1_1_dest_1_0_0,mpi_err )
       call mpi_isend(Facet_0_m1_m1_src_1_1_1_dest_1_0_0_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 4 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_0_m1_0_src_1_1_1_dest_1_0_1_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__0_m1_0
       mpi_dest_value = navi%mpi_rank__0_1_0
       call mpi_irecv( Facet_0_m1_0_src_1_1_1_dest_1_0_1_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 5 , mpi_comm_value, req_Facet_0_m1_0_src_1_1_1_dest_1_0_1,mpi_err )
       call mpi_isend(Facet_0_m1_0_src_1_1_1_dest_1_0_1_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 5 , mpi_comm_value, req_send_iranai, mpi_err )

       mpi_sizeof_value = sizeof(Facet_0_0_m1_src_1_1_1_dest_1_1_0_Recv) 
       mpi_comm_value = navi%mpi_comm
       mpi_src_value = navi%mpi_rank__0_0_m1
       mpi_dest_value = navi%mpi_rank__0_0_1
       call mpi_irecv( Facet_0_0_m1_src_1_1_1_dest_1_1_0_Recv , mpi_sizeof_value, MPI_BYTE, mpi_src_value, 6 , mpi_comm_value, req_Facet_0_0_m1_src_1_1_1_dest_1_1_0,mpi_err )
       call mpi_isend(Facet_0_0_m1_src_1_1_1_dest_1_1_0_Send , mpi_sizeof_value, MPI_BYTE, mpi_dest_value, 6 , mpi_comm_value, req_send_iranai, mpi_err )

       call mpi_wait(req_Facet_m1_0_0_src_1_1_1_dest_0_1_1,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_19()
       call Formura_internal_20()
       call mpi_wait(req_Facet_0_m1_0_src_1_1_1_dest_1_0_1,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_21()
       call Formura_internal_22()
       call mpi_wait(req_Facet_m1_m1_0_src_1_1_1_dest_0_0_1,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_23()
       call Formura_internal_24()
       call mpi_wait(req_Facet_0_0_m1_src_1_1_1_dest_1_1_0,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_25()
       call Formura_internal_26()
       call mpi_wait(req_Facet_m1_0_m1_src_1_1_1_dest_0_1_0,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_27()
       call Formura_internal_28()
       call mpi_wait(req_Facet_0_m1_m1_src_1_1_1_dest_1_0_0,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_29()
       call Formura_internal_30()
       call mpi_wait(req_Facet_m1_m1_m1_src_1_1_1_dest_0_0_0,MPI_STATUS_IGNORE,mpi_err)

       call Formura_internal_31()
       call Formura_internal_32()


    end do
    navi%time_step = navi%time_step + 20


  end subroutine Formura_Forward


end module finalist
