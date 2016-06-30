program main
  use finalist_header
  use finalist

  implicit none
  type(Formura_Navigator) :: navi
  integer :: seedsize
  integer,allocatable:: seed(:)
  integer :: epoch

  print *, "Formura test main program."

  call mpi_init(mpi_err)

  call Formura_Init(navi, MPI_COMM_WORLD)

  call random_seed(size=seedsize)  ! シードの格納に必要なサイズを取得する
  allocate(seed(seedsize))         ! シード格納領域を確保
  call random_seed(get=seed)       ! シードを取得
  seed(1) = navi%mpi_my_rank       ! シードを摂動
  call random_seed(put=seed)       ! シードを格納

  call init(navi)

  do epoch=1,100
     call Formura_Forward(navi)
  end do
  call write_global_monitor(navi)

  call mpi_finalize(mpi_err)
contains

  subroutine init(navi)
    type(Formura_Navigator) :: navi
    integer :: ix,iy,iz, sx,sy,sz
    double precision :: rx,ry,rz

    do iz = 1,206
       do iy = 1,206
          do ix = 1,206
             U(ix,iy,iz) = 1.0
             V(ix,iy,iz) = 0.0
          end do
       end do
    end do

    do iz = navi%lower_z+1, navi%upper_z
       do iy = navi%lower_y+1, navi%upper_y
          do ix = navi%lower_x+1, navi%upper_x
             U(ix,iy,iz) = 1.0
             V(ix,iy,iz) = 0.0
          end do
       end do
    end do

    call random_number(rx)
    call random_number(ry)
    call random_number(rz)

    rx = 0.5
    ry = 0.5
    rz = 0.5

    sx = (navi%upper_x-navi%lower_x-16)*rx
    sy = (navi%upper_y-navi%lower_y-16)*ry
    sz = (navi%upper_z-navi%lower_z-16)*rz

    do iz = sz+1,sz+16
       do iy = sy+1, sy+16
          do ix = sx+1, sx+16
             U(ix,iy,iz) = 0.5
             V(ix,iy,iz) = 0.25
          end do
       end do
    end do

  end subroutine init

  subroutine write_global_monitor(navi)
    type(Formura_Navigator) :: navi
    integer :: ix,iy,iz

    print *, "global monitor"
    print *, navi%offset_x + navi%lower_x
    print *, navi%offset_y + navi%lower_y
    print *, navi%offset_z + navi%lower_z
    print *, navi%upper_x - navi%lower_x
    print *, navi%upper_y - navi%lower_y
    print *, navi%upper_z - navi%lower_z

    if (navi%offset_z + navi%lower_z == 0) then
       print *, "global monitor output"
       iz = navi%lower_z + (navi%upper_z - navi%lower_z)/2
       do iy = navi%lower_y+1, navi%upper_y
          do ix = navi%lower_x+1, navi%upper_x
             print *, U(ix,iy,iz), V(ix,iy,iz)
          end do
       end do
    end if
  end subroutine write_global_monitor

end program main
