module finalist_internal_2
  use finalist_header
contains
  subroutine Formura_internal_127 ()
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
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_85_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_85_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(2), iz+(0))=Ridge_0_0_0_Om_85_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_85_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(0), iz+(2))=Ridge_0_0_0_Om_85_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(2))=Ridge_0_0_0_Om_85_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(34))=Facet_0_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(0), iz+(34))=Facet_0_0_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_85_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(34))=Facet_0_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_85_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(2), iz+(34))=Facet_0_0_1_src__1_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_85_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(34), iz+(0))=Facet_0_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(34), iz+(0))=Facet_0_1_0_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_85_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(34), iz+(2))=Facet_0_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_85_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(34), iz+(2))=Facet_0_1_0_src__1_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_85_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(34), iz+(34))=Facet_0_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(2), iy+(34), iz+(34))=Facet_0_1_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_85_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(2), iz+(0))=Facet_1_0_0_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_85_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_85_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(2), iz+(2))=Facet_1_0_0_src__0_1_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_85_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(0), iz+(34))=Facet_1_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(2), iz+(34))=Facet_1_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_85_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(34), iz+(0))=Facet_1_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_0_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(34), iz+(2))=Facet_1_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_1_0_Om_85_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(258), iy+(34), iz+(34))=Facet_1_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_1_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_86_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_86_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(2), iz+(0))=Ridge_0_0_0_Om_86_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_86_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(0), iz+(2))=Ridge_0_0_0_Om_86_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(2))=Ridge_0_0_0_Om_86_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(34))=Facet_0_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(0), iz+(34))=Facet_0_0_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_86_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(34))=Facet_0_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_86_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(2), iz+(34))=Facet_0_0_1_src__1_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_86_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(34), iz+(0))=Facet_0_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(34), iz+(0))=Facet_0_1_0_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_86_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(34), iz+(2))=Facet_0_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_86_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(34), iz+(2))=Facet_0_1_0_src__1_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_86_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(34), iz+(34))=Facet_0_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(2), iy+(34), iz+(34))=Facet_0_1_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_86_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(2), iz+(0))=Facet_1_0_0_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_86_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_86_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(2), iz+(2))=Facet_1_0_0_src__0_1_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_86_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(0), iz+(34))=Facet_1_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(2), iz+(34))=Facet_1_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_86_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(34), iz+(0))=Facet_1_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_0_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(34), iz+(2))=Facet_1_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_1_0_Om_86_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(258), iy+(34), iz+(34))=Facet_1_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_1_Om_86_r__0_0_0_r__1_1_1(ix, iy, iz)
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


  end subroutine Formura_internal_127

  subroutine Formura_internal_128 ()
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


  end subroutine Formura_internal_128

  subroutine Formura_internal_129 ()
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
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_87_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_87_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_87_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(2), iz+(0))=Ridge_0_0_0_Om_87_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_87_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(0), iz+(2))=Ridge_0_0_0_Om_87_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(2))=Ridge_0_0_0_Om_87_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(36))=Facet_0_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_87_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(0), iz+(36))=Facet_0_0_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_87_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(36))=Facet_0_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_87_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(2), iz+(36))=Facet_0_0_1_src__1_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_87_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(36), iz+(0))=Facet_0_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_87_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(36), iz+(0))=Facet_0_1_0_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_87_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(36), iz+(2))=Facet_0_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_87_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(36), iz+(2))=Facet_0_1_0_src__1_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_87_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(36), iz+(36))=Facet_0_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_87_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(2), iy+(36), iz+(36))=Facet_0_1_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_87_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_87_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(2), iz+(0))=Facet_1_0_0_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_87_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_87_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(2), iz+(2))=Facet_1_0_0_src__0_1_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_87_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(0), iz+(36))=Facet_1_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_87_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(2), iz+(36))=Facet_1_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_87_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(36), iz+(0))=Facet_1_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_0_Om_87_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(36), iz+(2))=Facet_1_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_1_0_Om_87_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(260), iy+(36), iz+(36))=Facet_1_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_1_Om_87_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_88_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_88_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_88_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(2), iz+(0))=Ridge_0_0_0_Om_88_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_88_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(0), iz+(2))=Ridge_0_0_0_Om_88_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(2))=Ridge_0_0_0_Om_88_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(36))=Facet_0_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_88_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(0), iz+(36))=Facet_0_0_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_88_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(36))=Facet_0_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_88_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(2), iz+(36))=Facet_0_0_1_src__1_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_88_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(36), iz+(0))=Facet_0_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_88_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(36), iz+(0))=Facet_0_1_0_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_88_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(36), iz+(2))=Facet_0_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_88_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(36), iz+(2))=Facet_0_1_0_src__1_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_88_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(36), iz+(36))=Facet_0_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_88_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(2), iy+(36), iz+(36))=Facet_0_1_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_88_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_88_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(2), iz+(0))=Facet_1_0_0_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_88_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_88_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(2), iz+(2))=Facet_1_0_0_src__0_1_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_88_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(0), iz+(36))=Facet_1_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_88_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(2), iz+(36))=Facet_1_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_88_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(36), iz+(0))=Facet_1_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_0_Om_88_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(36), iz+(2))=Facet_1_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_1_0_Om_88_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(260), iy+(36), iz+(36))=Facet_1_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_1_Om_88_r__0_0_0_r__1_1_1(ix, iy, iz)
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


  end subroutine Formura_internal_129

  subroutine Formura_internal_13 ()
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
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(254), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Ridge_0_0_0_Om_85_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Facet_0_0_1_src__0_0_0_dest__0_0_1_Send%Ridge_0_0_1_Om_85_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_85_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_0_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_0_1_Om_85_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__0_0_0_dest__0_1_0_Send%Ridge_0_1_0_Om_85_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_85_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_0_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_0_Om_85_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Facet_0_1_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_1_Om_85_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_0_Send%Ridge_1_0_0_Om_85_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_0_0_Om_85_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_0_Om_85_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_0_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_1_Om_85_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_1_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(30), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_1_0_Om_85_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_0_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(30))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_1_Om_85_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_13

  subroutine Formura_internal_130 ()
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


  end subroutine Formura_internal_130

  subroutine Formura_internal_131 ()
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
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_89_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_89_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_89_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(2), iz+(0))=Ridge_0_0_0_Om_89_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_89_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(0), iz+(2))=Ridge_0_0_0_Om_89_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(2))=Ridge_0_0_0_Om_89_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(0), iz+(38))=Facet_0_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_89_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(0), iz+(38))=Facet_0_0_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_89_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(2), iz+(38))=Facet_0_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_89_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(2), iz+(38))=Facet_0_0_1_src__1_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_89_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(38), iz+(0))=Facet_0_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_89_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(38), iz+(0))=Facet_0_1_0_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_89_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(38), iz+(2))=Facet_0_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_89_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(38), iz+(2))=Facet_0_1_0_src__1_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_89_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(0), iy+(38), iz+(38))=Facet_0_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_89_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(2), iy+(38), iz+(38))=Facet_0_1_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_89_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_89_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(2), iz+(0))=Facet_1_0_0_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_89_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_89_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(2), iz+(2))=Facet_1_0_0_src__0_1_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_89_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(0), iz+(38))=Facet_1_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_89_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(2), iz+(38))=Facet_1_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_89_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(38), iz+(0))=Facet_1_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_0_Om_89_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(38), iz+(2))=Facet_1_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_1_0_Om_89_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc3(ix+(262), iy+(38), iz+(38))=Facet_1_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_1_Om_89_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_90_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_90_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_90_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(2), iz+(0))=Ridge_0_0_0_Om_90_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_90_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(0), iz+(2))=Ridge_0_0_0_Om_90_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(2))=Ridge_0_0_0_Om_90_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(0), iz+(38))=Facet_0_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_90_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(0), iz+(38))=Facet_0_0_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_90_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(2), iz+(38))=Facet_0_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_90_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(2), iz+(38))=Facet_0_0_1_src__1_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_90_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(38), iz+(0))=Facet_0_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_90_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(38), iz+(0))=Facet_0_1_0_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_90_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(38), iz+(2))=Facet_0_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_90_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(38), iz+(2))=Facet_0_1_0_src__1_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_90_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(0), iy+(38), iz+(38))=Facet_0_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_90_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(2), iy+(38), iz+(38))=Facet_0_1_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_90_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_90_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(2), iz+(0))=Facet_1_0_0_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_90_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_90_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(2), iz+(2))=Facet_1_0_0_src__0_1_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_90_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(0), iz+(38))=Facet_1_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_90_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(2), iz+(38))=Facet_1_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_90_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(38), iz+(0))=Facet_1_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_0_Om_90_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(38), iz+(2))=Facet_1_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_1_0_Om_90_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc2(ix+(262), iy+(38), iz+(38))=Facet_1_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_1_Om_90_r__0_0_0_r__1_1_1(ix, iy, iz)
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


  end subroutine Formura_internal_131

  subroutine Formura_internal_132 ()
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


  end subroutine Formura_internal_132

  subroutine Formura_internal_133 ()
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
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_91_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_91_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_91_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(2), iz+(0))=Ridge_0_0_0_Om_91_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_91_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(0), iz+(2))=Ridge_0_0_0_Om_91_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(2))=Ridge_0_0_0_Om_91_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(40))=Facet_0_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_91_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(0), iz+(40))=Facet_0_0_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_91_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(2), iz+(40))=Facet_0_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_91_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(2), iz+(40))=Facet_0_0_1_src__1_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_91_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(40), iz+(0))=Facet_0_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_91_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(40), iz+(0))=Facet_0_1_0_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_91_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(40), iz+(2))=Facet_0_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_91_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(40), iz+(2))=Facet_0_1_0_src__1_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_91_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(40), iz+(40))=Facet_0_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_91_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(40), iz+(40))=Facet_0_1_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_91_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_91_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(2), iz+(0))=Facet_1_0_0_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_91_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_91_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(2), iz+(2))=Facet_1_0_0_src__0_1_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_91_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(40))=Facet_1_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_91_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(2), iz+(40))=Facet_1_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_91_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(40), iz+(0))=Facet_1_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_0_Om_91_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(40), iz+(2))=Facet_1_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_1_0_Om_91_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(40), iz+(40))=Facet_1_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_1_Om_91_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_92_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_92_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_92_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(2), iz+(0))=Ridge_0_0_0_Om_92_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_92_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(0), iz+(2))=Ridge_0_0_0_Om_92_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(2))=Ridge_0_0_0_Om_92_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(40))=Facet_0_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_92_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(0), iz+(40))=Facet_0_0_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_92_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(2), iz+(40))=Facet_0_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_92_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(2), iz+(40))=Facet_0_0_1_src__1_1_0_dest__1_1_1_Recv%Ridge_0_0_1_Om_92_r__1_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(40), iz+(0))=Facet_0_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_92_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(40), iz+(0))=Facet_0_1_0_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_0_Om_92_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(40), iz+(2))=Facet_0_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_92_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(40), iz+(2))=Facet_0_1_0_src__1_0_1_dest__1_1_1_Recv%Ridge_0_1_0_Om_92_r__1_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(40), iz+(40))=Facet_0_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_92_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(40), iz+(40))=Facet_0_1_1_src__1_0_0_dest__1_1_1_Recv%Ridge_0_1_1_Om_92_r__1_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_92_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(2), iz+(0))=Facet_1_0_0_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_0_Om_92_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_92_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(2), iz+(2))=Facet_1_0_0_src__0_1_1_dest__1_1_1_Recv%Ridge_1_0_0_Om_92_r__0_1_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(40))=Facet_1_0_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_92_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  38
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(2), iz+(40))=Facet_1_0_1_src__0_1_0_dest__1_1_1_Recv%Ridge_1_0_1_Om_92_r__0_1_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(40), iz+(0))=Facet_1_1_0_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_0_Om_92_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(40), iz+(2))=Facet_1_1_0_src__0_0_1_dest__1_1_1_Recv%Ridge_1_1_0_Om_92_r__0_0_1_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(40), iz+(40))=Facet_1_1_1_src__0_0_0_dest__1_1_1_Recv%Ridge_1_1_1_Om_92_r__0_0_0_r__1_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 35 ,  74 ,  1 

       do  iy = 35 ,  74 ,  1 

          do  ix = 259 ,  522 ,  1 

             a=Rsc1(ix+(-257), iy+(-33), iz+(-33))
             a_0=Rsc0(ix+(-257), iy+(-33), iz+(-33))

 U(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(-256), iy+(-33), iz+(-33)) - a ) &
- ( a - Rsc1(ix+(-258), iy+(-33), iz+(-33)) ) ) + ( ( Rsc1(ix+(-257), iy+(-32), iz+(-33)) - a ) - ( a - Rsc1(ix+(-257), iy+(-34), iz+(-33)) ) ) ) + ( ( Rsc1(ix+(-257), iy+(-33), iz+(-32)) - a ) - ( a - Rsc1(ix+(-257), iy+(-33), iz+(-34)) ) ) ) ) ) &
) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_133

  subroutine Formura_internal_134 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 35 ,  74 ,  1 

       do  iy = 35 ,  74 ,  1 

          do  ix = 259 ,  522 ,  1 

             a=Rsc0(ix+(-257), iy+(-33), iz+(-33))

 V(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(-257), iy+(-33), iz+(-33)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(-256), iy+(-33), &
iz+(-33)) - a ) - ( a - Rsc0(ix+(-258), iy+(-33), iz+(-33)) ) ) + ( ( Rsc0(ix+(-257), iy+(-32), iz+(-33)) - a ) - ( a - Rsc0(ix+(-257), iy+(-34), iz+(-33)) ) ) ) + ( ( Rsc0(ix+(-257), iy+(-33), iz+(-32)) - a ) - ( a - Rsc0(ix+(-257), iy+(-33), &
iz+(-34)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_134

  subroutine Formura_internal_135 ()
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_St_U(ix, iy, iz)=U(ix+(512), iy+(64), iz+(64))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_St_U(ix, iy, iz)=U(ix+(512), iy+(64), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_St_U(ix, iy, iz)=U(ix+(512), iy+(2), iz+(64))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  64
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_St_U(ix, iy, iz)=U(ix+(512), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  512
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_St_U(ix, iy, iz)=U(ix+(2), iy+(64), iz+(64))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  512
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_St_U(ix, iy, iz)=U(ix+(2), iy+(64), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  512
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_St_U(ix, iy, iz)=U(ix+(2), iy+(2), iz+(64))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_m1_src__1_1_1_dest__0_0_0_Send%Ridge_m1_m1_m1_St_V(ix, iy, iz)=V(ix+(512), iy+(64), iz+(64))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_m1_m1_0_src__1_1_1_dest__0_0_1_Send%Ridge_m1_m1_0_St_V(ix, iy, iz)=V(ix+(512), iy+(64), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  2
             Facet_m1_0_m1_src__1_1_1_dest__0_1_0_Send%Ridge_m1_0_m1_St_V(ix, iy, iz)=V(ix+(512), iy+(2), iz+(64))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  64
          do ix = 1 ,  2
             Facet_m1_0_0_src__1_1_1_dest__0_1_1_Send%Ridge_m1_0_0_St_V(ix, iy, iz)=V(ix+(512), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  512
             Facet_0_m1_m1_src__1_1_1_dest__1_0_0_Send%Ridge_0_m1_m1_St_V(ix, iy, iz)=V(ix+(2), iy+(64), iz+(64))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  512
             Facet_0_m1_0_src__1_1_1_dest__1_0_1_Send%Ridge_0_m1_0_St_V(ix, iy, iz)=V(ix+(2), iy+(64), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  512
             Facet_0_0_m1_src__1_1_1_dest__1_1_0_Send%Ridge_0_0_m1_St_V(ix, iy, iz)=V(ix+(2), iy+(2), iz+(64))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_135


end module finalist_internal_2

