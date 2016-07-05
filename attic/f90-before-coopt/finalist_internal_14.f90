module finalist_internal_14
  use finalist_header
contains
  subroutine Formura_internal_76 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  32 ,  1 

       do  iy = 1 ,  34 ,  1 

          do  ix = 1 ,  258 ,  1 

             a=Rsc3(ix+(1), iy+(1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc3(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc3(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc3(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(256), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_84_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(32), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(256), iy+(32), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_84_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_84_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(256), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_84_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_84_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(32), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_84_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_76

  subroutine Formura_internal_77 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_83_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(0), iz+(32))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_83_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_84_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(0), iz+(32))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_84_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  34 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc1(ix+(1), iy+(1), iz+(-1))
             a_0=Rsc0(ix+(1), iy+(1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc1(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc1(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc1(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(30), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_85_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_85_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_85_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_85_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_85_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_77

  subroutine Formura_internal_78 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  34 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc0(ix+(1), iy+(1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc0(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc0(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc0(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(30), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_86_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_86_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_86_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_86_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(30), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_86_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_78

  subroutine Formura_internal_79 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_85_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(0), iz+(34))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_85_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_86_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(0), iz+(34))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_86_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  36 ,  1 

       do  iy = 1 ,  30 ,  1 

          do  ix = 1 ,  254 ,  1 

             a=Rsc3(ix+(1), iy+(1), iz+(-1))
             a_0=Rsc2(ix+(1), iy+(1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc3(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc3(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc3(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Ridge_0_0_0_Om_87_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(252), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Ridge_0_0_0_Om_87_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(28), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_87_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(252), iy+(28), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_87_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_87_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(252), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_87_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_87_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(28), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_87_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_79

  subroutine Formura_internal_8 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  38 ,  1 

       do  iy = 1 ,  38 ,  1 

          do  ix = 1 ,  262 ,  1 

             a=V(ix+(3), iy+(3), iz+(3))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * U(ix+(3), iy+(3), iz+(3)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( V(ix+(4), iy+(3), iz+(3)) - a ) - ( a - V(ix+(2), &
iy+(3), iz+(3)) ) ) + ( ( V(ix+(3), iy+(4), iz+(3)) - a ) - ( a - V(ix+(3), iy+(2), iz+(3)) ) ) ) + ( ( V(ix+(3), iy+(3), iz+(4)) - a ) - ( a - V(ix+(3), iy+(3), iz+(2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_80_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(260), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Ridge_0_0_0_Om_80_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_80_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(260), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Facet_0_0_1_src__0_0_0_dest__0_0_1_Send%Ridge_0_0_1_Om_80_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_80_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_0_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_0_1_Om_80_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_80_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(260), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_0_src__0_0_0_dest__0_1_0_Send%Ridge_0_1_0_Om_80_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_80_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_0_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_0_Om_80_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_80_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_1_Om_80_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_80_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(260), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_0_Send%Ridge_1_0_0_Om_80_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_0_0_Om_80_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_0_Om_80_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_0_Om_80_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_1_Om_80_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_1_Om_80_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(36), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_1_0_Om_80_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_0_Om_80_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(36))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_1_Om_80_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_8

  subroutine Formura_internal_80 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  36 ,  1 

       do  iy = 1 ,  30 ,  1 

          do  ix = 1 ,  254 ,  1 

             a=Rsc2(ix+(1), iy+(1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc2(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc2(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc2(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Ridge_0_0_0_Om_88_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc1(ix+(252), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Ridge_0_0_0_Om_88_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(28), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_88_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(252), iy+(28), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_88_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_88_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(252), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_88_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_88_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(28), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_88_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_80

  subroutine Formura_internal_81 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_87_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(0), iz+(36))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_87_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_88_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(0), iz+(36))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_88_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  38 ,  1 

       do  iy = 1 ,  28 ,  1 

          do  ix = 1 ,  252 ,  1 

             a=Rsc0(ix+(1), iy+(1), iz+(-1))
             a_0=Rsc1(ix+(1), iy+(1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc0(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc0(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc0(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Ridge_0_0_0_Om_89_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc2(ix+(250), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Ridge_0_0_0_Om_89_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(26), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_89_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(250), iy+(26), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_89_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_89_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(250), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_89_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_89_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(26), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_89_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_81

  subroutine Formura_internal_82 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  38 ,  1 

       do  iy = 1 ,  28 ,  1 

          do  ix = 1 ,  252 ,  1 

             a=Rsc1(ix+(1), iy+(1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc1(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc1(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc1(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Ridge_0_0_0_Om_90_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc3(ix+(250), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Ridge_0_0_0_Om_90_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(26), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_90_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(250), iy+(26), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_90_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_90_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(250), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_90_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_90_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(26), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_90_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_82

  subroutine Formura_internal_83 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_89_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(0), iz+(38))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_89_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_90_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(0), iz+(38))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_90_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  40 ,  1 

       do  iy = 1 ,  26 ,  1 

          do  ix = 1 ,  250 ,  1 

             a=Rsc2(ix+(1), iy+(1), iz+(-1))
             a_0=Rsc3(ix+(1), iy+(1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc2(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc2(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc2(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Ridge_0_0_0_Om_91_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc1(ix+(248), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  250
             Ridge_0_0_0_Om_91_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(24), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_91_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(248), iy+(24), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  250
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_91_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_91_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(248), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_91_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_91_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(24), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_91_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_83

  subroutine Formura_internal_84 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  40 ,  1 

       do  iy = 1 ,  26 ,  1 

          do  ix = 1 ,  250 ,  1 

             a=Rsc3(ix+(1), iy+(1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(1), iz+(-1)) ) ) + ( ( Rsc3(ix+(1), iy+(2), iz+(-1)) - a ) - ( a - Rsc3(ix+(1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(1), iz+(0)) - a ) - ( a - Rsc3(ix+(1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Ridge_0_0_0_Om_92_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(248), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  250
             Ridge_0_0_0_Om_92_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(24), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_92_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(248), iy+(24), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  250
             Facet_0_1_0_src__0_0_1_dest__0_1_1_Send%Ridge_0_1_0_Om_92_r__0_0_1_r__0_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_92_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(248), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_0_1_Send%Ridge_1_0_0_Om_92_r__0_0_1_r__1_0_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_0_0_Om_92_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(24), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_1_dest__1_1_1_Send%Ridge_1_1_0_Om_92_r__0_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_84

  subroutine Formura_internal_85 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_91_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Rsc1(ix+(0), iy+(0), iz+(40))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_91_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_92_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Rsc0(ix+(0), iy+(0), iz+(40))=Facet_0_0_1_src__0_0_0_dest__0_0_1_Recv%Ridge_0_0_1_Om_92_r__0_0_0_r__0_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 35 ,  74 ,  1 

       do  iy = 11 ,  34 ,  1 

          do  ix = 11 ,  258 ,  1 

             a=Rsc1(ix+(-9), iy+(-9), iz+(-33))
             a_0=Rsc0(ix+(-9), iy+(-9), iz+(-33))

 U(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(-8), iy+(-9), iz+(-33)) - a ) - &
( a - Rsc1(ix+(-10), iy+(-9), iz+(-33)) ) ) + ( ( Rsc1(ix+(-9), iy+(-8), iz+(-33)) - a ) - ( a - Rsc1(ix+(-9), iy+(-10), iz+(-33)) ) ) ) + ( ( Rsc1(ix+(-9), iy+(-9), iz+(-32)) - a ) - ( a - Rsc1(ix+(-9), iy+(-9), iz+(-34)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_85

  subroutine Formura_internal_86 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 35 ,  74 ,  1 

       do  iy = 11 ,  34 ,  1 

          do  ix = 11 ,  258 ,  1 

             a=Rsc0(ix+(-9), iy+(-9), iz+(-33))

 V(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(-9), iy+(-9), iz+(-33)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(-8), iy+(-9), iz+(-33)) - a &
) - ( a - Rsc0(ix+(-10), iy+(-9), iz+(-33)) ) ) + ( ( Rsc0(ix+(-9), iy+(-8), iz+(-33)) - a ) - ( a - Rsc0(ix+(-9), iy+(-10), iz+(-33)) ) ) ) + ( ( Rsc0(ix+(-9), iy+(-9), iz+(-32)) - a ) - ( a - Rsc0(ix+(-9), iy+(-9), iz+(-34)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_86

  subroutine Formura_internal_87 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  2
             U(ix+(514), iy+(2), iz+(66))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_St_U(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  2
             V(ix+(514), iy+(2), iz+(66))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_St_V(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  28 ,  1 

       do  iy = 1 ,  38 ,  1 

          do  ix = 3 ,  252 ,  1 

             a=U(ix+(263), iy+(3), iz+(39))
             a_0=V(ix+(263), iy+(3), iz+(39))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( U(ix+(264), iy+(3), iz+(39)) - a ) - ( a - &
U(ix+(262), iy+(3), iz+(39)) ) ) + ( ( U(ix+(263), iy+(4), iz+(39)) - a ) - ( a - U(ix+(263), iy+(2), iz+(39)) ) ) ) + ( ( U(ix+(263), iy+(3), iz+(40)) - a ) - ( a - U(ix+(263), iy+(3), iz+(38)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Ridge_0_0_0_Om_79_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(36), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_79_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_87

  subroutine Formura_internal_88 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  28 ,  1 

       do  iy = 1 ,  38 ,  1 

          do  ix = 3 ,  252 ,  1 

             a=V(ix+(263), iy+(3), iz+(39))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * U(ix+(263), iy+(3), iz+(39)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( V(ix+(264), iy+(3), iz+(39)) - a ) - ( a - &
V(ix+(262), iy+(3), iz+(39)) ) ) + ( ( V(ix+(263), iy+(4), iz+(39)) - a ) - ( a - V(ix+(263), iy+(2), iz+(39)) ) ) ) + ( ( V(ix+(263), iy+(3), iz+(40)) - a ) - ( a - V(ix+(263), iy+(3), iz+(38)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Ridge_0_0_0_Om_80_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(36), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_80_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_88

  subroutine Formura_internal_89 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_79_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_79_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_79_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(28))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_79_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(0), iz+(28))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_79_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_79_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_79_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(0), iz+(28))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_79_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_80_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_80_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_80_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(28))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_80_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(0), iz+(28))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_80_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_80_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_80_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(0), iz+(28))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_80_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  30 ,  1 

       do  iy = 1 ,  36 ,  1 

          do  ix = 3 ,  254 ,  1 

             a=Rsc0(ix+(-1), iy+(1), iz+(-1))
             a_0=Rsc1(ix+(-1), iy+(1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc0(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc0(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc0(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Ridge_0_0_0_Om_81_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(34), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_81_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_89

  subroutine Formura_internal_9 ()
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
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_81_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(258), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Ridge_0_0_0_Om_81_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_81_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(258), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Facet_0_0_1_src__0_0_0_dest__0_0_1_Send%Ridge_0_0_1_Om_81_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_81_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_0_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_0_1_Om_81_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_81_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(258), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__0_0_0_dest__0_1_0_Send%Ridge_0_1_0_Om_81_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_81_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_0_Om_81_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_81_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_1_Om_81_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_81_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_0_Send%Ridge_1_0_0_Om_81_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_0_0_Om_81_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_0_Om_81_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_0_Om_81_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_1_Om_81_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_1_Om_81_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_1_0_Om_81_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_0_Om_81_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_1_Om_81_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_9

  subroutine Formura_internal_90 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  30 ,  1 

       do  iy = 1 ,  36 ,  1 

          do  ix = 3 ,  254 ,  1 

             a=Rsc1(ix+(-1), iy+(1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(-1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc1(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc1(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc1(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Ridge_0_0_0_Om_82_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(34), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_82_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_90

  subroutine Formura_internal_91 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_81_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_81_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_81_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(30))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_81_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(0), iz+(30))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_81_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_81_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_81_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(0), iz+(30))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_81_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_82_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_82_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_82_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(30))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_82_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(0), iz+(30))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_82_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_82_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_82_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(0), iz+(30))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_82_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  32 ,  1 

       do  iy = 1 ,  34 ,  1 

          do  ix = 3 ,  256 ,  1 

             a=Rsc3(ix+(-1), iy+(1), iz+(-1))
             a_0=Rsc2(ix+(-1), iy+(1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc3(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc3(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc3(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Ridge_0_0_0_Om_83_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(32), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_83_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_91

  subroutine Formura_internal_92 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  32 ,  1 

       do  iy = 1 ,  34 ,  1 

          do  ix = 3 ,  256 ,  1 

             a=Rsc2(ix+(-1), iy+(1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(-1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc2(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc2(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc2(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Ridge_0_0_0_Om_84_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(32), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_84_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_92

  subroutine Formura_internal_93 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_83_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_83_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_83_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(32))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_83_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(0), iz+(32))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_83_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_83_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_83_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(0), iz+(32))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_83_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_84_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_84_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_84_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(32))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_84_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(0), iz+(32))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_84_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_84_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_84_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(0), iz+(32))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_84_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  34 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 3 ,  258 ,  1 

             a=Rsc1(ix+(-1), iy+(1), iz+(-1))
             a_0=Rsc0(ix+(-1), iy+(1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc1(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc1(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc1(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(30), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_85_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_93


end module finalist_internal_14

