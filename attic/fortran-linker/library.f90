#include "parameter.h"
module library
  implicit none

  double precision, dimension(NX,NY,NZ) :: u,v
  double precision, dimension(NX,NY,NZ) :: u_other,v_other

contains

  subroutine init()
    integer x,y,z
    do z = 1, NZ
       do y = 1, NY
          do x = 1, NX
             u(x,y,z) = 1.0
             v(x,y,z) = 0.0
          end do
       end do
    end do
    do z = NZ*4/10, NZ*6/10
       do y = NY*4/10, NY*6/10
          do x = NX*4/10, NX*6/10
             u(x,y,z) = 0.5
             v(x,y,z) = 0.25
          end do
       end do
    end do

  end subroutine init

  subroutine proceed(u,v,u_next,v_next)
    double precision, intent(in) ,dimension(NX,NY,NZ) :: u,v
    double precision, intent(out),dimension(NX,NY,NZ) :: u_next,v_next

    double precision, parameter :: rU = 1.0/86400.0, rV = 6.0/86400.0, rE = 1.0/900.0
    double precision, parameter :: Du = 2.3e-10, Dv = 6.1e-11, dt = 200, dx = 0.001
    double precision u0, v0, eat, du_dt, dv_dt, lap_u, lap_v
    integer x,y,z,x0,y0,z0

    do z0 = 1, (NZ-2)/2
       do y0 = 1, NY-2
          do x0 = 1, NX-2
             x=x0+1
             y=z0+1
             z=2*z0
             u0 = u(x,y,z)
             v0 = v(x,y,z)
             eat = rE * u0 * v0 * v0
             lap_u = u(x+1,y,z)+u(x-1,y,z)+u(x,y+1,z)+u(x,y-1,z)+u(x,y,z+1)+u(x,y,z-1)-6.0*u(x,y,z)
             lap_v = v(x+1,y,z)+v(x-1,y,z)+v(x,y+1,z)+v(x,y-1,z)+v(x,y,z+1)+v(x,y,z-1)-6.0*v(x,y,z)
             du_dt = -eat + rU * (1.0-u0) + Du/dx/dx * lap_u
             dv_dt =  eat - rV * v0 + Dv/dx/dx * lap_v
             u_next(x0,y0,z-1) = u0 + du_dt * dt
             v_next(x0,y0,z-1) = v0 + dv_dt * dt
             ! x=x0+1
             ! y=z0+1
             z=2*z0+1
             u0 = u(x,y,z)
             v0 = v(x,y,z)
             eat = rE * u0 * v0 * v0
             lap_u = u(x+1,y,z)+u(x-1,y,z)+u(x,y+1,z)+u(x,y-1,z)+u(x,y,z+1)+u(x,y,z-1)-6.0*u(x,y,z)
             lap_v = v(x+1,y,z)+v(x-1,y,z)+v(x,y+1,z)+v(x,y-1,z)+v(x,y,z+1)+v(x,y,z-1)-6.0*v(x,y,z)
             du_dt = -eat + rU * (1.0-u0) + Du/dx/dx * lap_u
             dv_dt =  eat - rV * v0 + Dv/dx/dx * lap_v
             u_next(x0,y0,z-1) = u0 + du_dt * dt
             v_next(x0,y0,z-1) = v0 + dv_dt * dt
          end do
       end do
    end do

  end subroutine proceed
end module library
