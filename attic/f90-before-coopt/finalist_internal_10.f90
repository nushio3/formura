module finalist_internal_10
  use finalist_header
contains
  subroutine Formura_internal_250 ()
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
             Rsc0(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(28))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_79_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(28), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_79_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(28), iz+(28))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(28))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_79_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(28), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_79_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_79_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_79_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(0), iz+(28))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(0), iz+(28))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_79_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_79_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_79_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(28), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(28), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_79_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_79_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_79_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(28), iz+(28))=Ridge_0_0_0_Om_79_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(28), iz+(28))=Ridge_0_0_0_Om_79_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(2), iz+(28))=Ridge_0_0_0_Om_79_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(2), iz+(28))=Ridge_0_0_0_Om_79_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(28), iz+(2))=Ridge_0_0_0_Om_79_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc0(ix+(2), iy+(28), iz+(2))=Ridge_0_0_0_Om_79_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(252), iy+(2), iz+(2))=Ridge_0_0_0_Om_79_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(28))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_80_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(28), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_80_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(28), iz+(28))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(28))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_80_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(28), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_80_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_80_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_80_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(0), iz+(28))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(0), iz+(28))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_80_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_80_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_80_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(28), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(28), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_80_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_80_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_80_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(28), iz+(28))=Ridge_0_0_0_Om_80_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(28), iz+(28))=Ridge_0_0_0_Om_80_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(2), iz+(28))=Ridge_0_0_0_Om_80_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(2), iz+(28))=Ridge_0_0_0_Om_80_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(28), iz+(2))=Ridge_0_0_0_Om_80_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  250
             Rsc1(ix+(2), iy+(28), iz+(2))=Ridge_0_0_0_Om_80_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(252), iy+(2), iz+(2))=Ridge_0_0_0_Om_80_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  30 ,  1 

       do  iy = 3 ,  30 ,  1 

          do  ix = 3 ,  254 ,  1 

             a=Rsc0(ix+(-1), iy+(-1), iz+(-1))
             a_0=Rsc1(ix+(-1), iy+(-1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc0(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc0(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc0(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_250

  subroutine Formura_internal_251 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  30 ,  1 

       do  iy = 3 ,  30 ,  1 

          do  ix = 3 ,  254 ,  1 

             a=Rsc1(ix+(-1), iy+(-1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(-1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc1(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc1(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc1(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_251

  subroutine Formura_internal_252 ()
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
             Rsc3(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(30))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_81_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(30), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_81_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(30), iz+(30))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(30))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_81_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(30), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_81_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_81_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_81_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(0), iz+(30))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(0), iz+(30))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_81_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_81_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_81_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(30), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(30), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_81_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_81_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_81_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(30), iz+(30))=Ridge_0_0_0_Om_81_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(30), iz+(30))=Ridge_0_0_0_Om_81_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(2), iz+(30))=Ridge_0_0_0_Om_81_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(2), iz+(30))=Ridge_0_0_0_Om_81_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(30), iz+(2))=Ridge_0_0_0_Om_81_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(2), iy+(30), iz+(2))=Ridge_0_0_0_Om_81_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc3(ix+(254), iy+(2), iz+(2))=Ridge_0_0_0_Om_81_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(30))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_82_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(30), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_82_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(30), iz+(30))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(30))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_82_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(30), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_82_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_82_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_82_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(0), iz+(30))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(0), iz+(30))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_82_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_82_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_82_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(30), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(30), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_82_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_82_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_82_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(30), iz+(30))=Ridge_0_0_0_Om_82_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(30), iz+(30))=Ridge_0_0_0_Om_82_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(2), iz+(30))=Ridge_0_0_0_Om_82_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(2), iz+(30))=Ridge_0_0_0_Om_82_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(30), iz+(2))=Ridge_0_0_0_Om_82_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(2), iy+(30), iz+(2))=Ridge_0_0_0_Om_82_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Rsc2(ix+(254), iy+(2), iz+(2))=Ridge_0_0_0_Om_82_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  32 ,  1 

       do  iy = 3 ,  32 ,  1 

          do  ix = 3 ,  256 ,  1 

             a=Rsc3(ix+(-1), iy+(-1), iz+(-1))
             a_0=Rsc2(ix+(-1), iy+(-1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc3(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc3(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc3(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_252

  subroutine Formura_internal_253 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  32 ,  1 

       do  iy = 3 ,  32 ,  1 

          do  ix = 3 ,  256 ,  1 

             a=Rsc2(ix+(-1), iy+(-1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(-1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc2(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc2(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc2(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_253

  subroutine Formura_internal_254 ()
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
             Rsc1(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(32))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_83_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(32), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_83_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(32), iz+(32))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(32))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_83_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(32), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_83_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_83_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_83_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(0), iz+(32))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(0), iz+(32))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_83_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_83_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_83_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(32), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(32), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_83_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_83_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_83_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(32), iz+(32))=Ridge_0_0_0_Om_83_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(32), iz+(32))=Ridge_0_0_0_Om_83_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(2), iz+(32))=Ridge_0_0_0_Om_83_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(2), iz+(32))=Ridge_0_0_0_Om_83_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(32), iz+(2))=Ridge_0_0_0_Om_83_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(2), iy+(32), iz+(2))=Ridge_0_0_0_Om_83_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc1(ix+(256), iy+(2), iz+(2))=Ridge_0_0_0_Om_83_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(32))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_84_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(32), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_84_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(32), iz+(32))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(32))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_84_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(32), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_84_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_84_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_84_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(0), iz+(32))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(0), iz+(32))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_84_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_84_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_84_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(32), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(32), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_84_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_84_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_84_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(32), iz+(32))=Ridge_0_0_0_Om_84_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(32), iz+(32))=Ridge_0_0_0_Om_84_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(2), iz+(32))=Ridge_0_0_0_Om_84_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(2), iz+(32))=Ridge_0_0_0_Om_84_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(32), iz+(2))=Ridge_0_0_0_Om_84_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(2), iy+(32), iz+(2))=Ridge_0_0_0_Om_84_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Rsc0(ix+(256), iy+(2), iz+(2))=Ridge_0_0_0_Om_84_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  34 ,  1 

       do  iy = 3 ,  34 ,  1 

          do  ix = 3 ,  258 ,  1 

             a=Rsc1(ix+(-1), iy+(-1), iz+(-1))
             a_0=Rsc0(ix+(-1), iy+(-1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc1(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc1(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc1(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_254

  subroutine Formura_internal_255 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  34 ,  1 

       do  iy = 3 ,  34 ,  1 

          do  ix = 3 ,  258 ,  1 

             a=Rsc0(ix+(-1), iy+(-1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(-1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc0(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc0(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc0(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_255

  subroutine Formura_internal_256 ()
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
             Rsc2(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(34))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_85_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(34), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_85_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(34), iz+(34))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(34))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_85_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(34), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_85_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_85_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_85_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(34))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(0), iz+(34))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_85_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_85_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_85_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(34), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(34), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_85_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_85_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_85_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(34), iz+(34))=Ridge_0_0_0_Om_85_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(34), iz+(34))=Ridge_0_0_0_Om_85_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(2), iz+(34))=Ridge_0_0_0_Om_85_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(2), iz+(34))=Ridge_0_0_0_Om_85_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(34), iz+(2))=Ridge_0_0_0_Om_85_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(34), iz+(2))=Ridge_0_0_0_Om_85_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(2), iz+(2))=Ridge_0_0_0_Om_85_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_m1_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(34))=Facet_m1_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(2))=Facet_m1_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_m1_0_Om_86_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(34), iz+(0))=Facet_m1_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(0))=Facet_m1_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_m1_Om_86_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(34), iz+(34))=Facet_m1_0_0_src__1_1_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(34))=Facet_m1_0_0_src__1_0_1_dest__0_0_0_Recv%Ridge_m1_0_0_Om_86_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(34), iz+(2))=Facet_m1_0_0_src__1_1_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_86_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(2))=Facet_m1_0_0_src__1_0_0_dest__0_0_0_Recv%Ridge_m1_0_0_Om_86_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(0))=Facet_0_m1_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(0), iz+(0))=Facet_0_m1_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_m1_Om_86_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(34))=Facet_0_m1_0_src__1_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(0), iz+(34))=Facet_0_m1_0_src__0_1_1_dest__0_0_0_Recv%Ridge_0_m1_0_Om_86_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(2))=Facet_0_m1_0_src__1_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_86_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(0), iz+(2))=Facet_0_m1_0_src__0_1_0_dest__0_0_0_Recv%Ridge_0_m1_0_Om_86_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(34), iz+(0))=Facet_0_0_m1_src__1_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(34), iz+(0))=Facet_0_0_m1_src__0_1_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_86_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(2), iz+(0))=Facet_0_0_m1_src__1_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_86_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(2), iz+(0))=Facet_0_0_m1_src__0_0_1_dest__0_0_0_Recv%Ridge_0_0_m1_Om_86_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(34), iz+(34))=Ridge_0_0_0_Om_86_r__1_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(34), iz+(34))=Ridge_0_0_0_Om_86_r__0_1_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(2), iz+(34))=Ridge_0_0_0_Om_86_r__1_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(2), iz+(34))=Ridge_0_0_0_Om_86_r__0_0_1_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(34), iz+(2))=Ridge_0_0_0_Om_86_r__1_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(34), iz+(2))=Ridge_0_0_0_Om_86_r__0_1_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(2), iz+(2))=Ridge_0_0_0_Om_86_r__1_0_0_r__0_0_0(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  36 ,  1 

       do  iy = 3 ,  36 ,  1 

          do  ix = 3 ,  260 ,  1 

             a=Rsc2(ix+(-1), iy+(-1), iz+(-1))
             a_0=Rsc3(ix+(-1), iy+(-1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc2(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc2(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc2(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_256

  subroutine Formura_internal_257 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  36 ,  1 

       do  iy = 3 ,  36 ,  1 

          do  ix = 3 ,  260 ,  1 

             a=Rsc3(ix+(-1), iy+(-1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(-1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(0), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(-2), iy+(-1), iz+(-1)) ) ) + ( ( Rsc3(ix+(-1), iy+(0), iz+(-1)) - a ) - ( a - Rsc3(ix+(-1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(-1), iy+(-1), iz+(0)) - a ) - ( a - Rsc3(ix+(-1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_257


end module finalist_internal_10

