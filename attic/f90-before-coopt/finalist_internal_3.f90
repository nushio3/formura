module finalist_internal_3
  use finalist_header
contains
  subroutine Formura_internal_136 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  38 ,  1 

       do  iy = 1 ,  38 ,  1 

          do  ix = 1 ,  262 ,  1 

             a=U(ix+(251), iy+(27), iz+(27))
             a_0=V(ix+(251), iy+(27), iz+(27))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( U(ix+(252), iy+(27), iz+(27)) - a ) - ( a - &
U(ix+(250), iy+(27), iz+(27)) ) ) + ( ( U(ix+(251), iy+(28), iz+(27)) - a ) - ( a - U(ix+(251), iy+(26), iz+(27)) ) ) ) + ( ( U(ix+(251), iy+(27), iz+(28)) - a ) - ( a - U(ix+(251), iy+(27), iz+(26)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(260), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_0_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(260), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_Om_79_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc0(ix+(260), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_m1_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(260), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_Om_79_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc0(ix+(260), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_0_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_0_Om_79_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc0(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_0_0_Om_79_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc0(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_Om_79_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_m1_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_Om_79_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_0_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_m1_0_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_0_Om_79_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_0_m1_0_Om_79_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_Om_79_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_0_m1_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_0_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_0_m1_Om_79_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_0_0_m1_Om_79_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_Om_79_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_79_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_79_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Ridge_0_0_0_Om_79_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_79_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_79_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_79_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_136

  subroutine Formura_internal_137 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  38 ,  1 

       do  iy = 1 ,  38 ,  1 

          do  ix = 1 ,  262 ,  1 

             a=V(ix+(251), iy+(27), iz+(27))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * U(ix+(251), iy+(27), iz+(27)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( V(ix+(252), iy+(27), iz+(27)) - a ) - ( a - &
V(ix+(250), iy+(27), iz+(27)) ) ) + ( ( V(ix+(251), iy+(28), iz+(27)) - a ) - ( a - V(ix+(251), iy+(26), iz+(27)) ) ) ) + ( ( V(ix+(251), iy+(27), iz+(28)) - a ) - ( a - V(ix+(251), iy+(27), iz+(26)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(260), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_0_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(260), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_Om_80_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc1(ix+(260), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_m1_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_Om_80_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_0_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_0_Om_80_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_0_0_Om_80_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_Om_80_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_m1_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_Om_80_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_0_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_m1_0_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_0_Om_80_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_0_m1_0_Om_80_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_Om_80_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_0_m1_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_0_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_0_m1_Om_80_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_0_0_m1_Om_80_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_Om_80_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_80_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Ridge_0_0_0_Om_80_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_80_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_137

  subroutine Formura_internal_138 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  36 ,  1 

       do  iy = 1 ,  36 ,  1 

          do  ix = 1 ,  260 ,  1 

             a=Rsc0(ix+(1), iy+(1), iz+(1))
             a_0=Rsc1(ix+(1), iy+(1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(1), iz+(1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(1), iz+(1)) ) ) + ( ( Rsc0(ix+(1), iy+(2), iz+(1)) - a ) - ( a - Rsc0(ix+(1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(1), iz+(2)) - a ) - ( a - Rsc0(ix+(1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(258), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_0_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(258), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_Om_81_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc2(ix+(258), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_m1_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_Om_81_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_0_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_0_Om_81_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_0_0_Om_81_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_Om_81_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_m1_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_Om_81_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_0_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_m1_0_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_0_Om_81_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_0_m1_0_Om_81_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_Om_81_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_0_m1_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_0_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_0_m1_Om_81_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_0_0_m1_Om_81_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_Om_81_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_81_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Ridge_0_0_0_Om_81_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_81_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_138

  subroutine Formura_internal_139 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  36 ,  1 

       do  iy = 1 ,  36 ,  1 

          do  ix = 1 ,  260 ,  1 

             a=Rsc1(ix+(1), iy+(1), iz+(1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(1), iz+(1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(1), iz+(1)) ) ) + ( ( Rsc1(ix+(1), iy+(2), iz+(1)) - a ) - ( a - Rsc1(ix+(1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(1), iz+(2)) - a ) - ( a - Rsc1(ix+(1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(258), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_0_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(258), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_Om_82_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc3(ix+(258), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_m1_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_Om_82_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_0_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_0_Om_82_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_0_0_Om_82_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_Om_82_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_m1_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_Om_82_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_0_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_m1_0_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_0_Om_82_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_0_m1_0_Om_82_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_Om_82_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_0_m1_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_0_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_0_m1_Om_82_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_0_0_m1_Om_82_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_Om_82_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_82_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Ridge_0_0_0_Om_82_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_82_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_139

  subroutine Formura_internal_14 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  32 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc0(ix+(1), iy+(1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(1), iz+(1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(1), iz+(1)) ) ) + ( ( Rsc0(ix+(1), iy+(2), iz+(1)) - a ) - ( a - Rsc0(ix+(1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(1), iz+(2)) - a ) - ( a - Rsc0(ix+(1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(254), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Facet_0_0_1_src__0_0_0_dest__0_0_1_Send%Ridge_0_0_1_Om_86_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_86_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_0_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_0_1_Om_86_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__0_0_0_dest__0_1_0_Send%Ridge_0_1_0_Om_86_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_86_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_0_Om_86_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_1_Om_86_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_0_Send%Ridge_1_0_0_Om_86_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_0_0_Om_86_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_0_Om_86_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_0_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_1_Om_86_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_1_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_1_0_Om_86_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_0_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_1_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_14

  subroutine Formura_internal_140 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  34 ,  1 

       do  iy = 1 ,  34 ,  1 

          do  ix = 1 ,  258 ,  1 

             a=Rsc2(ix+(1), iy+(1), iz+(1))
             a_0=Rsc3(ix+(1), iy+(1), iz+(1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(1), iz+(1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(1), iz+(1)) ) ) + ( ( Rsc2(ix+(1), iy+(2), iz+(1)) - a ) - ( a - Rsc2(ix+(1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(1), iz+(2)) - a ) - ( a - Rsc2(ix+(1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(256), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_0_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(256), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_Om_83_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc1(ix+(256), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_m1_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_Om_83_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_0_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_0_Om_83_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_0_0_Om_83_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_Om_83_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_m1_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_Om_83_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_0_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_m1_0_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_0_Om_83_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_0_m1_0_Om_83_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_Om_83_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_0_m1_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_0_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_0_m1_Om_83_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_0_0_m1_Om_83_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_Om_83_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_83_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Ridge_0_0_0_Om_83_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_83_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_140

  subroutine Formura_internal_141 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  34 ,  1 

       do  iy = 1 ,  34 ,  1 

          do  ix = 1 ,  258 ,  1 

             a=Rsc3(ix+(1), iy+(1), iz+(1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(1), iz+(1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(1), iz+(1)) ) ) + ( ( Rsc3(ix+(1), iy+(2), iz+(1)) - a ) - ( a - Rsc3(ix+(1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(1), iz+(2)) - a ) - ( a - Rsc3(ix+(1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(256), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_0_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(256), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_Om_84_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc0(ix+(256), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_m1_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(256), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_Om_84_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc0(ix+(256), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_0_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_0_Om_84_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc0(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_0_0_Om_84_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc0(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_Om_84_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_m1_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_Om_84_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_0_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_m1_0_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_0_Om_84_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_0_m1_0_Om_84_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_Om_84_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_0_m1_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_0_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_0_m1_Om_84_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_0_0_m1_Om_84_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_Om_84_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_84_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Ridge_0_0_0_Om_84_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_84_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_141

  subroutine Formura_internal_142 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  32 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc1(ix+(1), iy+(1), iz+(1))
             a_0=Rsc0(ix+(1), iy+(1), iz+(1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(1), iz+(1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(1), iz+(1)) ) ) + ( ( Rsc1(ix+(1), iy+(2), iz+(1)) - a ) - ( a - Rsc1(ix+(1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(1), iz+(2)) - a ) - ( a - Rsc1(ix+(1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(254), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_0_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(254), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_Om_85_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc3(ix+(254), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_m1_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_Om_85_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_0_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_0_Om_85_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_0_0_Om_85_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_Om_85_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_m1_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_Om_85_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_0_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_m1_0_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_0_Om_85_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_0_m1_0_Om_85_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_Om_85_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_0_m1_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_0_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_0_m1_Om_85_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_0_0_m1_Om_85_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_Om_85_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_142

  subroutine Formura_internal_143 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  32 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc0(ix+(1), iy+(1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(1), iz+(1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(1), iz+(1)) ) ) + ( ( Rsc0(ix+(1), iy+(2), iz+(1)) - a ) - ( a - Rsc0(ix+(1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(1), iz+(2)) - a ) - ( a - Rsc0(ix+(1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(254), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_0_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(254), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_Om_86_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc2(ix+(254), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_m1_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_Om_86_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_0_Send%Ridge_m1_0_0_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_0_Om_86_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_0_0_Om_86_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_Om_86_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_m1_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_Om_86_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_0_Send%Ridge_0_m1_0_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_m1_0_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_0_Om_86_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_0_m1_0_Om_86_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_Om_86_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_0_0_Send%Ridge_0_0_m1_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_0_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_0_m1_Om_86_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_0_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_0_0_m1_Om_86_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_Om_86_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__1_1_1_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__1_1_1_r__0_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__1_1_1_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__1_1_1_r__0_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__1_1_1_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__1_1_1_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_143


end module finalist_internal_3

