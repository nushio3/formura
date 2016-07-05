module finalist_internal_11
  use finalist_header
contains
  subroutine Formura_internal_258 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_87_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(36))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_87_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_87_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(36), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_87_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_87_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(36), iz+(36))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_87_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(36))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_87_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(36), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_87_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_87_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_87_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_87_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(36))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_87_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(0), iz+(36))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_87_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_87_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_87_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(36), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_87_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(36), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_87_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_87_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_87_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(36), iz+(36))=Ridge_0_0_0_Om_87_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(36), iz+(36))=Ridge_0_0_0_Om_87_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(2), iz+(36))=Ridge_0_0_0_Om_87_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(2), iz+(36))=Ridge_0_0_0_Om_87_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(36), iz+(2))=Ridge_0_0_0_Om_87_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(36), iz+(2))=Ridge_0_0_0_Om_87_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(2), iz+(2))=Ridge_0_0_0_Om_87_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_88_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(36))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_88_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_88_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(36), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_88_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_88_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(36), iz+(36))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_88_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(36))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_88_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(36), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_88_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_88_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_88_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_88_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(36))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_88_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(0), iz+(36))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_88_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_88_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_88_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(36), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_88_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(36), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_88_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_88_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_88_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(36), iz+(36))=Ridge_0_0_0_Om_88_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(36), iz+(36))=Ridge_0_0_0_Om_88_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(2), iz+(36))=Ridge_0_0_0_Om_88_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(2), iz+(36))=Ridge_0_0_0_Om_88_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(36), iz+(2))=Ridge_0_0_0_Om_88_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(36), iz+(2))=Ridge_0_0_0_Om_88_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(2), iz+(2))=Ridge_0_0_0_Om_88_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  38 ,  1 

       do  iy = 3 ,  38 ,  1 

          do  ix = 3 ,  262 ,  1 

             a=Rsc0(ix+(-1), iy+(-1), iz+(-1))
             a_0=Rsc1(ix+(-1), iy+(-1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc0(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc0(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc0(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_258

  subroutine Formura_internal_259 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  38 ,  1 

       do  iy = 3 ,  38 ,  1 

          do  ix = 3 ,  262 ,  1 

             a=Rsc1(ix+(-1), iy+(-1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(-1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc1(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc1(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc1(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_259

  subroutine Formura_internal_26 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  36 ,  1 

       do  iy = 1 ,  36 ,  1 

          do  ix = 3 ,  254 ,  1 

             a=Rsc1(ix+(-1), iy+(1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(-1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc1(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc1(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc1(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Ridge_0_0_0_Om_82_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(2), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Ridge_0_0_0_Om_82_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Ridge_0_0_0_Om_82_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_82_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_82_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_82_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_82_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_82_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_26

  subroutine Formura_internal_260 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_89_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(38))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_89_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_89_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(38), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_89_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_89_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(38), iz+(38))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_89_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(38))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_89_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(38), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_89_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_89_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_89_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_89_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(38))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_89_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(0), iz+(38))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_89_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_89_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_89_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(38), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_89_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(38), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_89_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_89_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_89_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(38), iz+(38))=Ridge_0_0_0_Om_89_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(38), iz+(38))=Ridge_0_0_0_Om_89_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(2), iz+(38))=Ridge_0_0_0_Om_89_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(2), iz+(38))=Ridge_0_0_0_Om_89_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(38), iz+(2))=Ridge_0_0_0_Om_89_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(38), iz+(2))=Ridge_0_0_0_Om_89_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(2), iz+(2))=Ridge_0_0_0_Om_89_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_90_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(38))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_90_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_90_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(38), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_90_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_90_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(38), iz+(38))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_90_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(38))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_90_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(38), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_90_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_90_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_90_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_90_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(38))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_90_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(0), iz+(38))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_90_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_90_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_90_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(38), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_90_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(38), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_90_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_90_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_90_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(38), iz+(38))=Ridge_0_0_0_Om_90_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(38), iz+(38))=Ridge_0_0_0_Om_90_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(2), iz+(38))=Ridge_0_0_0_Om_90_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(2), iz+(38))=Ridge_0_0_0_Om_90_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(38), iz+(2))=Ridge_0_0_0_Om_90_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(38), iz+(2))=Ridge_0_0_0_Om_90_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(2), iz+(2))=Ridge_0_0_0_Om_90_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  40 ,  1 

       do  iy = 3 ,  40 ,  1 

          do  ix = 3 ,  264 ,  1 

             a=Rsc3(ix+(-1), iy+(-1), iz+(-1))
             a_0=Rsc2(ix+(-1), iy+(-1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc3(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc3(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc3(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_260

  subroutine Formura_internal_261 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  40 ,  1 

       do  iy = 3 ,  40 ,  1 

          do  ix = 3 ,  264 ,  1 

             a=Rsc2(ix+(-1), iy+(-1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(-1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc2(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc2(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc2(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_261

  subroutine Formura_internal_262 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_91_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(40))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_91_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_91_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(40), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_91_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_91_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(40), iz+(40))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_91_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(40))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_91_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(40), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_91_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_91_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_91_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_91_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(40))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_91_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(0), iz+(40))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_91_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_91_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_91_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(40), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_91_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(40), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_91_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_91_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_91_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(40), iz+(40))=Ridge_0_0_0_Om_91_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(40), iz+(40))=Ridge_0_0_0_Om_91_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(2), iz+(40))=Ridge_0_0_0_Om_91_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(2), iz+(40))=Ridge_0_0_0_Om_91_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(40), iz+(2))=Ridge_0_0_0_Om_91_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(40), iz+(2))=Ridge_0_0_0_Om_91_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(2), iz+(2))=Ridge_0_0_0_Om_91_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_92_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(40))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_92_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_92_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(40), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_92_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_92_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(40), iz+(40))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_92_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(40))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_92_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(40), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_92_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_92_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_92_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_92_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(40))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_92_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(0), iz+(40))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_92_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_92_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_92_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(40), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_92_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(40), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_92_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_92_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_92_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(40), iz+(40))=Ridge_0_0_0_Om_92_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(40), iz+(40))=Ridge_0_0_0_Om_92_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(2), iz+(40))=Ridge_0_0_0_Om_92_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(2), iz+(40))=Ridge_0_0_0_Om_92_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(40), iz+(2))=Ridge_0_0_0_Om_92_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(40), iz+(2))=Ridge_0_0_0_Om_92_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(2), iz+(2))=Ridge_0_0_0_Om_92_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = -5 ,  34 ,  1 

       do  iy = -5 ,  34 ,  1 

          do  ix = -5 ,  258 ,  1 

             a=Rsc1(ix+(7), iy+(7), iz+(7))
             a_0=Rsc0(ix+(7), iy+(7), iz+(7))

 U(ix+(8)+(0), iy+(8)+(0), iz+(8)+(0))=( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(8), iy+(7), iz+(7)) - a ) - ( a - &
Rsc1(ix+(6), iy+(7), iz+(7)) ) ) + ( ( Rsc1(ix+(7), iy+(8), iz+(7)) - a ) - ( a - Rsc1(ix+(7), iy+(6), iz+(7)) ) ) ) + ( ( Rsc1(ix+(7), iy+(7), iz+(8)) - a ) - ( a - Rsc1(ix+(7), iy+(7), iz+(6)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_262

  subroutine Formura_internal_263 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = -5 ,  34 ,  1 

       do  iy = -5 ,  34 ,  1 

          do  ix = -5 ,  258 ,  1 

             a=Rsc0(ix+(7), iy+(7), iz+(7))

 V(ix+(8)+(0), iy+(8)+(0), iz+(8)+(0))=( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(7), iy+(7), iz+(7)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(8), iy+(7), iz+(7)) - a ) - ( a - &
Rsc0(ix+(6), iy+(7), iz+(7)) ) ) + ( ( Rsc0(ix+(7), iy+(8), iz+(7)) - a ) - ( a - Rsc0(ix+(7), iy+(6), iz+(7)) ) ) ) + ( ( Rsc0(ix+(7), iy+(7), iz+(8)) - a ) - ( a - Rsc0(ix+(7), iy+(7), iz+(6)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_263

  subroutine Formura_internal_27 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_81_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_81_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_82_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_82_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  34 ,  1 

       do  iy = 1 ,  34 ,  1 

          do  ix = 3 ,  256 ,  1 

             a=Rsc3(ix+(-1), iy+(1), iz+(1))
             a_0=Rsc2(ix+(-1), iy+(1), iz+(1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc3(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc3(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc3(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Ridge_0_0_0_Om_83_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(2), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Ridge_0_0_0_Om_83_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Ridge_0_0_0_Om_83_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_83_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_83_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_83_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_83_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_83_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_27

  subroutine Formura_internal_28 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  34 ,  1 

       do  iy = 1 ,  34 ,  1 

          do  ix = 3 ,  256 ,  1 

             a=Rsc2(ix+(-1), iy+(1), iz+(1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(-1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc2(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc2(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc2(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Ridge_0_0_0_Om_84_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(2), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Ridge_0_0_0_Om_84_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Ridge_0_0_0_Om_84_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_84_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_84_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_84_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_84_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_84_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_28

  subroutine Formura_internal_29 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_83_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_83_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_84_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_84_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  32 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 3 ,  258 ,  1 

             a=Rsc1(ix+(-1), iy+(1), iz+(1))
             a_0=Rsc0(ix+(-1), iy+(1), iz+(1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc1(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc1(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc1(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(2), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_85_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_85_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_85_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_85_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_85_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc2(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_29

  subroutine Formura_internal_30 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  32 ,  1 

       do  iy = 1 ,  32 ,  1 

          do  ix = 3 ,  258 ,  1 

             a=Rsc0(ix+(-1), iy+(1), iz+(1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(-1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc0(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc0(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc0(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc0(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc0(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(2), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_86_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_86_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_86_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_86_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_86_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_86_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_30

  subroutine Formura_internal_31 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_85_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_85_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_86_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_86_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  30 ,  1 

       do  iy = 1 ,  30 ,  1 

          do  ix = 3 ,  260 ,  1 

             a=Rsc2(ix+(-1), iy+(1), iz+(1))
             a_0=Rsc3(ix+(-1), iy+(1), iz+(1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc2(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc2(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc2(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_87_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(2), iy+(28), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Ridge_0_0_0_Om_87_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_87_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(28), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_87_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_87_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(28), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_87_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_87_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_87_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_31

  subroutine Formura_internal_32 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 1 ,  30 ,  1 

       do  iy = 1 ,  30 ,  1 

          do  ix = 3 ,  260 ,  1 

             a=Rsc3(ix+(-1), iy+(1), iz+(1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(-1), iy+(1), iz+(1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc3(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc3(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc3(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_88_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(2), iy+(28), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Ridge_0_0_0_Om_88_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_88_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(28), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_88_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_88_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(28), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_88_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_88_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(28))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_88_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_32

  subroutine Formura_internal_33 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_87_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_87_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_88_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_0_Recv%Ridge_1_0_0_Om_88_r__0_0_0_r__1_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 1 ,  28 ,  1 

       do  iy = 1 ,  28 ,  1 

          do  ix = 3 ,  262 ,  1 

             a=Rsc0(ix+(-1), iy+(1), iz+(1))
             a_0=Rsc1(ix+(-1), iy+(1), iz+(1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(0), iy+(1), iz+(1)) - a ) - ( a - &
Rsc0(ix+(-2), iy+(1), iz+(1)) ) ) + ( ( Rsc0(ix+(-1), iy+(2), iz+(1)) - a ) - ( a - Rsc0(ix+(-1), iy+(0), iz+(1)) ) ) ) + ( ( Rsc0(ix+(-1), iy+(1), iz+(2)) - a ) - ( a - Rsc0(ix+(-1), iy+(1), iz+(0)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_89_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(2), iy+(26), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Ridge_0_0_0_Om_89_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_89_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(26), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Facet_0_0_1_src__1_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_89_r__1_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_0_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_89_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(26), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__1_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_89_r__1_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_89_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(26))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_1_src__1_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_89_r__1_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(2), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_33


end module finalist_internal_11

