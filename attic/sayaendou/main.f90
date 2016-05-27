program main
  implicit none

  double precision, dimension(50,50,50) :: u,v
  double precision, dimension(50,50,50) :: u_m,v_m
  call init()

  print *, u(25,25,25), v(25,25,25)

contains
  subroutine init()
    integer x,y,z
    do z = 1, 50
       do y = 1, 50
          do x = 1, 50
             u(x,y,z) = 1.0
             v(x,y,z) = 0.0
          end do
       end do
    end do
  end subroutine init

  subroutine proceed(u,v,u_next,v_next)
    double precision, intent(in) ,dimension(50,50,50) :: u,v
    double precision, intent(out),dimension(50,50,50) :: u_next,v_next

    double precision, parameter ::  rU = 1/86400.0, rV = 6/86400.0, rE = 1/900.0, Du = 2.3e-10, Dv = 6.1e-11, dt = 200, dx = 0.001
    double precision u0, v0, eat, du_dt, dv_dt, lap_u, lap_v
    integer x,y,z

    do z = 2, 49
       do y = 2, 49
          do x = 2, 49
             u0 = u(x,y,z)
             v0 = v(x,y,z)
             eat = rE * u0 * v0 * v0
             lap_u = u(x+1,y,z)+u(x-1,y,z)+u(x,y+1,z)+u(x,y-1,z)+u(x,y,z+1)+u(x,y,z-1)-6.0*u(x,y,z)
             lap_v = u(x+1,y,z)+u(x-1,y,z)+u(x,y+1,z)+u(x,y-1,z)+u(x,y,z+1)+u(x,y,z-1)-6.0*u(x,y,z)
             du_dt = -eat + rU * (1.0-u0) + Du/dx/dx * lap_u
             dv_dt =  eat + rV * v0 + Dv/dx/dx * lap_v
             u_next(x,y,z) = u0 + du_dt * dt
             v_next(x,y,z) = v0 + dv_dt * dt
          end do
       end do
    end do

  end subroutine proceed


end program main
