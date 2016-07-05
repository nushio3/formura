module finalist_internal_12
  use finalist_header
contains
  subroutine Formura_internal_34 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  28 ,  1 

       do  iy = 1 ,  28 ,  1 

          do  ix = 3 ,  262 ,  1 

             a=Rsc1(ix+(-1), iy+(1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(-1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc1(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc1(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc1(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_90_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(2), iy+(26), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Ridge_0_0_0_Om_90_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_90_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(26), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_90_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_90_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(26), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_90_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_90_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_90_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_34

  subroutine Formura_internal_35 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_89_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_89_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_90_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_90_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  26 ,  1 

       do  iy = 1 ,  26 ,  1 

          do  ix = 3 ,  264 ,  1 

             a=Rsc3(ix+(-1), iy+(1), iz+(1))
             a_0=Rsc2(ix+(-1), iy+(1), iz+(1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc3(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc3(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc3(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_91_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(2), iy+(24), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Ridge_0_0_0_Om_91_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_91_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(24), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_91_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_91_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(24), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_91_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_91_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_91_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_35

  subroutine Formura_internal_36 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  26 ,  1 

       do  iy = 1 ,  26 ,  1 

          do  ix = 3 ,  264 ,  1 

             a=Rsc2(ix+(-1), iy+(1), iz+(1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(-1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc2(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc2(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc2(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_92_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(2), iy+(24), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Ridge_0_0_0_Om_92_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_92_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(24), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_92_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_92_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(24), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_92_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_92_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_92_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_36

  subroutine Formura_internal_37 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_91_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_91_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_92_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_92_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 11 ,  34 ,  1 

       do  iy = 11 ,  34 ,  1 

          do  ix = 259 ,  522 ,  1 

             a=Rsc1(ix+(-257), iy+(-9), iz+(-9))
             a_0=Rsc0(ix+(-257), iy+(-9), iz+(-9))

 U(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(-256), iy+(-9), iz+(-9)) - a ) - &
( a - Rsc1(ix+(-258), iy+(-9), iz+(-9)) ) ) + ( ( Rsc1(ix+(-257), iy+(-8), iz+(-9)) - a ) - ( a - Rsc1(ix+(-257), iy+(-10), iz+(-9)) ) ) ) + ( ( Rsc1(ix+(-257), iy+(-9), iz+(-8)) - a ) - ( a - Rsc1(ix+(-257), iy+(-9), iz+(-10)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_37

  subroutine Formura_internal_38 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 11 ,  34 ,  1 

       do  iy = 11 ,  34 ,  1 

          do  ix = 259 ,  522 ,  1 

             a=Rsc0(ix+(-257), iy+(-9), iz+(-9))

 V(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(-257), iy+(-9), iz+(-9)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(-256), iy+(-9), iz+(-9)) - &
a ) - ( a - Rsc0(ix+(-258), iy+(-9), iz+(-9)) ) ) + ( ( Rsc0(ix+(-257), iy+(-8), iz+(-9)) - a ) - ( a - Rsc0(ix+(-257), iy+(-10), iz+(-9)) ) ) ) + ( ( Rsc0(ix+(-257), iy+(-9), iz+(-8)) - a ) - ( a - Rsc0(ix+(-257), iy+(-9), iz+(-10)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_38

  subroutine Formura_internal_39 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  512
             U(ix+(2), iy+(66), iz+(2))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_St_U(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  512
             V(ix+(2), iy+(66), iz+(2))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_St_V(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  38 ,  1 

       do  iy = 3 ,  28 ,  1 

          do  ix = 1 ,  262 ,  1 

             a=U(ix+(3), iy+(39), iz+(3))
             a_0=V(ix+(3), iy+(39), iz+(3))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( U(ix+(4), iy+(39), iz+(3)) - a ) - ( a - U(ix+(2), &
iy+(39), iz+(3)) ) ) + ( ( U(ix+(3), iy+(40), iz+(3)) - a ) - ( a - U(ix+(3), iy+(38), iz+(3)) ) ) ) + ( ( U(ix+(3), iy+(39), iz+(4)) - a ) - ( a - U(ix+(3), iy+(39), iz+(2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Ridge_0_0_0_Om_79_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(260), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Ridge_0_0_0_Om_79_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Ridge_0_0_0_Om_79_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(260), iy+(2), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_79_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_79_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(260), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_79_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_79_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_79_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_39

  subroutine Formura_internal_40 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  38 ,  1 

       do  iy = 3 ,  28 ,  1 

          do  ix = 1 ,  262 ,  1 

             a=V(ix+(3), iy+(39), iz+(3))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * U(ix+(3), iy+(39), iz+(3)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( V(ix+(4), iy+(39), iz+(3)) - a ) - ( a - V(ix+(2), &
iy+(39), iz+(3)) ) ) + ( ( V(ix+(3), iy+(40), iz+(3)) - a ) - ( a - V(ix+(3), iy+(38), iz+(3)) ) ) ) + ( ( V(ix+(3), iy+(39), iz+(4)) - a ) - ( a - V(ix+(3), iy+(39), iz+(2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(260), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Ridge_0_0_0_Om_80_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(260), iy+(2), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_80_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_80_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(260), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_80_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_80_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_80_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_40

  subroutine Formura_internal_41 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_79_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(28), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_79_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_80_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(28), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_80_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  36 ,  1 

       do  iy = 3 ,  30 ,  1 

          do  ix = 1 ,  260 ,  1 

             a=Rsc0(ix+(1), iy+(-1), iz+(1))
             a_0=Rsc1(ix+(1), iy+(-1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc0(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc0(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc0(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(258), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Ridge_0_0_0_Om_81_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(258), iy+(2), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_81_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_81_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(258), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_81_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_81_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_81_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_41

  subroutine Formura_internal_42 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  36 ,  1 

       do  iy = 3 ,  30 ,  1 

          do  ix = 1 ,  260 ,  1 

             a=Rsc1(ix+(1), iy+(-1), iz+(1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(1), iy+(-1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc1(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc1(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc1(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(258), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Ridge_0_0_0_Om_82_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(258), iy+(2), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_82_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_82_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(258), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_82_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_82_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_82_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_42

  subroutine Formura_internal_43 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_81_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(30), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_81_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_82_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(30), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_82_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  34 ,  1 

       do  iy = 3 ,  32 ,  1 

          do  ix = 1 ,  258 ,  1 

             a=Rsc2(ix+(1), iy+(-1), iz+(1))
             a_0=Rsc3(ix+(1), iy+(-1), iz+(1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc2(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc2(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc2(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(256), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Ridge_0_0_0_Om_83_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(256), iy+(2), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_83_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_83_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(256), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_83_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_83_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_83_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_43

  subroutine Formura_internal_44 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  34 ,  1 

       do  iy = 3 ,  32 ,  1 

          do  ix = 1 ,  258 ,  1 

             a=Rsc3(ix+(1), iy+(-1), iz+(1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(1), iy+(-1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc3(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc3(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc3(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(256), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Ridge_0_0_0_Om_84_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(256), iy+(2), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_84_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_84_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(256), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_84_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_84_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_84_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_44

  subroutine Formura_internal_45 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_83_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(32), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_83_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_84_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(32), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_84_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  32 ,  1 

       do  iy = 3 ,  34 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc1(ix+(1), iy+(-1), iz+(1))
             a_0=Rsc0(ix+(1), iy+(-1), iz+(1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc1(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc1(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc1(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(254), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(2), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_85_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_85_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_85_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_85_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_85_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_45

  subroutine Formura_internal_46 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  32 ,  1 

       do  iy = 3 ,  34 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc0(ix+(1), iy+(-1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(1), iy+(-1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc0(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc0(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc0(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(254), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(2), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_86_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_86_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_86_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_86_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_86_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_46

  subroutine Formura_internal_47 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_85_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(34), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_85_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_86_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(34), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_86_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  30 ,  1 

       do  iy = 3 ,  36 ,  1 

          do  ix = 1 ,  254 ,  1 

             a=Rsc3(ix+(1), iy+(-1), iz+(1))
             a_0=Rsc2(ix+(1), iy+(-1), iz+(1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc3(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc3(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc3(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_87_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(252), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Ridge_0_0_0_Om_87_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_87_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(252), iy+(2), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_87_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_87_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(252), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_87_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_87_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_87_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_47

  subroutine Formura_internal_48 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  30 ,  1 

       do  iy = 3 ,  36 ,  1 

          do  ix = 1 ,  254 ,  1 

             a=Rsc2(ix+(1), iy+(-1), iz+(1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(1), iy+(-1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc2(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc2(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc2(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_88_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(252), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Ridge_0_0_0_Om_88_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_88_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(252), iy+(2), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_88_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_88_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(252), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_88_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_88_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_88_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_48

  subroutine Formura_internal_49 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_87_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(36), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_87_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_88_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(36), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_88_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  28 ,  1 

       do  iy = 3 ,  38 ,  1 

          do  ix = 1 ,  252 ,  1 

             a=Rsc0(ix+(1), iy+(-1), iz+(1))
             a_0=Rsc1(ix+(1), iy+(-1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc0(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc0(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc0(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_89_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(250), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Ridge_0_0_0_Om_89_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_89_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(250), iy+(2), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_89_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_89_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(250), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_89_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_89_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_89_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_49

  subroutine Formura_internal_50 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  28 ,  1 

       do  iy = 3 ,  38 ,  1 

          do  ix = 1 ,  252 ,  1 

             a=Rsc1(ix+(1), iy+(-1), iz+(1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(1), iy+(-1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc1(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc1(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc1(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_90_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(250), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Ridge_0_0_0_Om_90_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_90_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(250), iy+(2), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_90_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_90_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(250), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_90_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_90_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_90_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_50

  subroutine Formura_internal_51 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_89_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(38), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_89_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_90_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(38), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_90_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  26 ,  1 

       do  iy = 3 ,  40 ,  1 

          do  ix = 1 ,  250 ,  1 

             a=Rsc2(ix+(1), iy+(-1), iz+(1))
             a_0=Rsc3(ix+(1), iy+(-1), iz+(1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc2(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc2(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc2(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_91_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(248), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  250
             Ridge_0_0_0_Om_91_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_91_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(248), iy+(2), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  250
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_91_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_91_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(248), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_91_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_91_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_91_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_51

  subroutine Formura_internal_52 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  26 ,  1 

       do  iy = 3 ,  40 ,  1 

          do  ix = 1 ,  250 ,  1 

             a=Rsc3(ix+(1), iy+(-1), iz+(1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(1), iy+(-1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(-1), iz+(1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(-1), iz+(1)) ) ) + ( ( Rsc3(ix+(1), iy+(0), iz+(1)) - a ) - ( a - Rsc3(ix+(1), iy+(-2), iz+(1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(-1), iz+(2)) - a ) - ( a - Rsc3(ix+(1), iy+(-1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_92_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(248), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  250
             Ridge_0_0_0_Om_92_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_92_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(248), iy+(2), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  250
             Facet_0_0_1_src__0_1_0_dest__0_1_1_Send%Ridge_0_0_1_Om_92_r__0_1_0_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_0_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_92_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(248), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_0_Send%Ridge_1_0_0_Om_92_r__0_1_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_0_Om_92_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(24))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_1_src__0_1_0_dest__1_1_1_Send%Ridge_1_0_1_Om_92_r__0_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_52

  subroutine Formura_internal_53 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_91_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc1(ix+(0), iy+(40), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_91_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_92_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc0(ix+(0), iy+(40), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_0_Recv%Ridge_0_1_0_Om_92_r__0_0_0_r__0_1_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 11 ,  34 ,  1 

       do  iy = 35 ,  74 ,  1 

          do  ix = 11 ,  258 ,  1 

             a=Rsc1(ix+(-9), iy+(-33), iz+(-9))
             a_0=Rsc0(ix+(-9), iy+(-33), iz+(-9))

 U(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(-8), iy+(-33), iz+(-9)) - a ) - &
( a - Rsc1(ix+(-10), iy+(-33), iz+(-9)) ) ) + ( ( Rsc1(ix+(-9), iy+(-32), iz+(-9)) - a ) - ( a - Rsc1(ix+(-9), iy+(-34), iz+(-9)) ) ) ) + ( ( Rsc1(ix+(-9), iy+(-33), iz+(-8)) - a ) - ( a - Rsc1(ix+(-9), iy+(-33), iz+(-10)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_53

  subroutine Formura_internal_54 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 11 ,  34 ,  1 

       do  iy = 35 ,  74 ,  1 

          do  ix = 11 ,  258 ,  1 

             a=Rsc0(ix+(-9), iy+(-33), iz+(-9))

 V(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(-9), iy+(-33), iz+(-9)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(-8), iy+(-33), iz+(-9)) - a &
) - ( a - Rsc0(ix+(-10), iy+(-33), iz+(-9)) ) ) + ( ( Rsc0(ix+(-9), iy+(-32), iz+(-9)) - a ) - ( a - Rsc0(ix+(-9), iy+(-34), iz+(-9)) ) ) ) + ( ( Rsc0(ix+(-9), iy+(-33), iz+(-8)) - a ) - ( a - Rsc0(ix+(-9), iy+(-33), iz+(-10)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_54

  subroutine Formura_internal_55 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  2
             U(ix+(514), iy+(66), iz+(2))=Facet_1_1_0_src__0_0_0_dest__1_1_0_Recv%Ridge_1_1_0_St_U(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  2
             V(ix+(514), iy+(66), iz+(2))=Facet_1_1_0_src__0_0_0_dest__1_1_0_Recv%Ridge_1_1_0_St_V(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  38 ,  1 

       do  iy = 3 ,  28 ,  1 

          do  ix = 3 ,  252 ,  1 

             a=U(ix+(263), iy+(39), iz+(3))
             a_0=V(ix+(263), iy+(39), iz+(3))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( U(ix+(264), iy+(39), iz+(3)) - a ) - ( a - &
U(ix+(262), iy+(39), iz+(3)) ) ) + ( ( U(ix+(263), iy+(40), iz+(3)) - a ) - ( a - U(ix+(263), iy+(38), iz+(3)) ) ) ) + ( ( U(ix+(263), iy+(39), iz+(4)) - a ) - ( a - U(ix+(263), iy+(39), iz+(2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Ridge_0_0_0_Om_79_r__1_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(2), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Facet_0_0_1_src__1_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_79_r__1_1_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_55

  subroutine Formura_internal_56 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  38 ,  1 

       do  iy = 3 ,  28 ,  1 

          do  ix = 3 ,  252 ,  1 

             a=V(ix+(263), iy+(39), iz+(3))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * U(ix+(263), iy+(39), iz+(3)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( V(ix+(264), iy+(39), iz+(3)) - a ) - ( a - &
V(ix+(262), iy+(39), iz+(3)) ) ) + ( ( V(ix+(263), iy+(40), iz+(3)) - a ) - ( a - V(ix+(263), iy+(38), iz+(3)) ) ) ) + ( ( V(ix+(263), iy+(39), iz+(4)) - a ) - ( a - V(ix+(263), iy+(39), iz+(2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Ridge_0_0_0_Om_80_r__1_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(2), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Facet_0_0_1_src__1_1_0_dest__1_1_1_Send%Ridge_0_0_1_Om_80_r__1_1_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(2), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_56


end module finalist_internal_12

