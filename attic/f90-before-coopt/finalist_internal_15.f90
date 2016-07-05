module finalist_internal_15
  use finalist_header
contains
  subroutine Formura_internal_94 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  34 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 3 ,  258 ,  1 

             a=Rsc0(ix+(-1), iy+(1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(-1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc0(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc0(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc0(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(30), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_86_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_94

  subroutine Formura_internal_95 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_85_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_85_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_85_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(34))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_85_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(0), iz+(34))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_85_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_85_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_85_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(34))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_85_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_86_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_86_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_86_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(34))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_86_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(0), iz+(34))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_86_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_86_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_86_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(34))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_86_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  36 ,  1 

       do  iy = 1 ,  30 ,  1 

          do  ix = 3 ,  260 ,  1 

             a=Rsc2(ix+(-1), iy+(1), iz+(-1))
             a_0=Rsc3(ix+(-1), iy+(1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc2(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc2(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc2(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_87_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(28), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_87_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_95

  subroutine Formura_internal_96 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  36 ,  1 

       do  iy = 1 ,  30 ,  1 

          do  ix = 3 ,  260 ,  1 

             a=Rsc3(ix+(-1), iy+(1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(-1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc3(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc3(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc3(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_88_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(28), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_88_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_96

  subroutine Formura_internal_97 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_87_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_87_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_87_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(36))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_87_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(0), iz+(36))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_87_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_87_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_87_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(36))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_87_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_88_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_88_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_88_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(36))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_88_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(0), iz+(36))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_88_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_88_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_88_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(36))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_88_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  38 ,  1 

       do  iy = 1 ,  28 ,  1 

          do  ix = 3 ,  262 ,  1 

             a=Rsc0(ix+(-1), iy+(1), iz+(-1))
             a_0=Rsc1(ix+(-1), iy+(1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc0(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc0(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc0(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_89_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(26), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_89_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_97

  subroutine Formura_internal_98 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  38 ,  1 

       do  iy = 1 ,  28 ,  1 

          do  ix = 3 ,  262 ,  1 

             a=Rsc1(ix+(-1), iy+(1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(-1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc1(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc1(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc1(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_90_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(26), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_90_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_98

  subroutine Formura_internal_99 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_89_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_89_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_89_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(38))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_89_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(0), iz+(38))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_89_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_89_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_89_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(38))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_89_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_90_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_90_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_90_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(38))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_90_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(0), iz+(38))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_90_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_90_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_90_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(38))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_90_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  40 ,  1 

       do  iy = 1 ,  26 ,  1 

          do  ix = 3 ,  264 ,  1 

             a=Rsc3(ix+(-1), iy+(1), iz+(-1))
             a_0=Rsc2(ix+(-1), iy+(1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc3(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc3(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc3(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_91_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(24), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_91_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_99


end module finalist_internal_15

