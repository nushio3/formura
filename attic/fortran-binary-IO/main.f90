program main
  implicit none

  double precision, dimension (640,480) :: screen
  double precision, parameter :: ox = 320, oy = 240
  integer :: file_unit
  integer :: x,y


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  ! main program
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  do y = 1, 480
     do x = 1, 640
        screen(x,y) = (x-ox) ** 2 + (y-oy) ** 2
     end do
  end do

  file_unit = get_file_unit()
  open(file_unit, file='test.bin', status='new', access='stream')
  write(file_unit) screen
  close(file_unit)


contains
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

end program main
