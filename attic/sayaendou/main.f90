program main
  double precision, dimension(50,50,50) u,v
  call init()

  print *, u(25,25,25), v(25,25,25)

contains
  subroutine init()
    do x = 1, 50
       do y = 1, 50
          do z = 1, 50
             u(x,y,z) = 1.0
             v(x,y,z) = 0.0
          end do
       end do
    end do
  end subroutine proceed

  init

end program main
