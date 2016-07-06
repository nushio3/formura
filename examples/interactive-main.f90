program main
  use finalist_header
  use finalist

  implicit none
  type(Formura_Navigator) :: navi
  integer :: seedsize,seed_un
  double precision :: seed_throw
  integer,allocatable:: seed(:)


  print *, "Formura test main program."

  call mpi_init(mpi_err)

  call Formura_Init(navi, MPI_COMM_WORLD)

  call random_seed(size=seedsize)  ! シードの格納に必要なサイズを取得する
  allocate(seed(seedsize))         ! シード格納領域を確保
!  seed_un = get_file_unit()
!  open(unit=seed_un, file="/dev/urandom", access="stream", &
!       form="unformatted", action="read", status="old")
!  read(seed_un) seed
  !  close(seed_un)

  do seed_un=1,seedsize
     seed(seed_un) = lcg(navi%mpi_my_rank + 1341398 * seed_un)
  end do
  call random_seed(put=seed)       ! シードを格納
  do seed_un=1,1024
     call random_number(seed_throw)
  end do


  call init(navi)

  call fapp_start("main", 0,0)
  call start_collection("main")
  do while (navi%time_step <8192)
     call Formura_Forward(navi)
  end do
  call stop_collection("main")
  call fapp_stop("main", 0,0)



  if (navi%mpi_my_rank == 0) then
     print *, "time = ", navi%time_step
  end if

  call write_global_monitor(navi)

  call mpi_finalize(mpi_err)

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!          CONTAINS          !!!
contains !!! contains !!! contains
!!!          CONTAINS          !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  ! http://fortranwiki.org/fortran/show/newunit
  integer function get_file_unit()
    integer, parameter :: LUN_MIN=10, LUN_MAX=1000
    logical :: opened
    integer :: lun

    get_file_unit=-1
    do lun=LUN_MIN,LUN_MAX
       inquire(unit=lun,opened=opened)
       if (.not. opened) then
          get_file_unit=lun
          exit
       end if
    end do
  end function get_file_unit

  subroutine init(navi)
    type(Formura_Navigator) :: navi
    integer :: ix,iy,iz, sx,sy,sz
    double precision :: rx,ry,rz


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
    print *, rx,ry,rz

    sx = int(dble(navi%upper_x-navi%lower_x-16)*rx)
    sy = int(dble(navi%upper_y-navi%lower_y-16)*ry)
    sz = int(dble(navi%upper_z-navi%lower_z-16)*rz)

    print *, sx,sy,sz

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
    integer :: ix,iy,iz, file_unit, myrank, vx_lo, vx_hi
    character*256 :: filename

    if (navi%offset_z + navi%lower_z > 0) then
       return
    end if


    myrank = navi%mpi_my_rank
    print *, "my rank is ", myrank
    write (filename,'("monitor",I5.5,".bin")') myrank

    file_unit = get_file_unit()
    open(file_unit, file=filename, status='replace', access='stream')

    write(file_unit), navi%offset_z + navi%lower_z
    write(file_unit), navi%offset_y + navi%lower_y
    write(file_unit), navi%offset_x + navi%lower_x
    write(file_unit), navi%upper_z - navi%lower_z
    write(file_unit), navi%upper_y - navi%lower_y
    write(file_unit), navi%upper_x - navi%lower_x

    vx_lo = navi%lower_x+1
    vx_hi = navi%upper_x

    iz = navi%lower_z + (navi%upper_z - navi%lower_z)/2
    do iy = navi%lower_y+1, navi%upper_y
       write(file_unit), U(vx_lo:vx_hi,iy,iz)
    end do
    do iy = navi%lower_y+1, navi%upper_y
       write(file_unit), V(vx_lo:vx_hi,iy,iz)
    end do
  end subroutine write_global_monitor

  function lcg(s)
    integer :: s
    integer :: lcg

    if (s == 0) then
       s = 104729
    else
       s = mod(s, 4294967296)
    end if
    s = mod(s * 279470273, 4294967291)
    lcg = s
  end function lcg
end program main
