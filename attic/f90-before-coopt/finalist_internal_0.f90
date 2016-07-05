module finalist_internal_0
  use finalist_header
contains
  subroutine Formura_internal ()
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  512
             Facet_0_0_1_src__0_0_0_dest__0_0_1_Send%Ridge_0_0_1_St_U(ix, iy, iz)=U(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  512
             Facet_0_1_0_src__0_0_0_dest__0_1_0_Send%Ridge_0_1_0_St_U(ix, iy, iz)=U(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  512
             Facet_0_1_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_1_St_U(ix, iy, iz)=U(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  64
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_0_Send%Ridge_1_0_0_St_U(ix, iy, iz)=U(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_1_St_U(ix, iy, iz)=U(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_1_0_St_U(ix, iy, iz)=U(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_1_St_U(ix, iy, iz)=U(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  512
             Facet_0_0_1_src__0_0_0_dest__0_0_1_Send%Ridge_0_0_1_St_V(ix, iy, iz)=V(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  512
             Facet_0_1_0_src__0_0_0_dest__0_1_0_Send%Ridge_0_1_0_St_V(ix, iy, iz)=V(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  512
             Facet_0_1_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_1_St_V(ix, iy, iz)=V(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  64
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_0_Send%Ridge_1_0_0_St_V(ix, iy, iz)=V(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  64
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_1_St_V(ix, iy, iz)=V(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  64
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_1_0_St_V(ix, iy, iz)=V(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_1_St_V(ix, iy, iz)=V(ix+(2), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal

  subroutine Formura_internal_10 ()
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
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_82_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(258), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Ridge_0_0_0_Om_82_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Ridge_0_0_0_Om_82_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(258), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  260
             Facet_0_0_1_src__0_0_0_dest__0_0_1_Send%Ridge_0_0_1_Om_82_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_82_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_0_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_0_1_Om_82_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_82_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(258), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__0_0_0_dest__0_1_0_Send%Ridge_0_1_0_Om_82_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_82_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_0_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_0_Om_82_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_82_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Facet_0_1_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_1_Om_82_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_82_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(258), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_0_Send%Ridge_1_0_0_Om_82_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_0_0_Om_82_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_0_Om_82_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_0_Om_82_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_1_Om_82_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_1_Om_82_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(34), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_1_0_Om_82_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_0_Om_82_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(34))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_1_Om_82_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_10

  subroutine Formura_internal_100 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  40 ,  1 

       do  iy = 1 ,  26 ,  1 

          do  ix = 3 ,  264 ,  1 

             a=Rsc2(ix+(-1), iy+(1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(-1), iy+(1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(0), iy+(1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(-2), iy+(1), iz+(-1)) ) ) + ( ( Rsc2(ix+(-1), iy+(2), iz+(-1)) - a ) - ( a - Rsc2(ix+(-1), iy+(0), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(-1), iy+(1), iz+(0)) - a ) - ( a - Rsc2(ix+(-1), iy+(1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Ridge_0_0_0_Om_92_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(24), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  2
          do ix = 1 ,  262
             Facet_0_1_0_src__1_0_1_dest__1_1_1_Send%Ridge_0_1_0_Om_92_r__1_0_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(2), iy+(0), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_100

  subroutine Formura_internal_101 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_91_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_91_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_91_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(0), iy+(0), iz+(40))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_91_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Rsc1(ix+(2), iy+(0), iz+(40))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_91_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_91_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_91_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc1(ix+(264), iy+(0), iz+(40))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_91_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_92_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(0), iz+(0))=Ridge_0_0_0_Om_92_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_92_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(0), iy+(0), iz+(40))=Facet_0_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_92_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Rsc0(ix+(2), iy+(0), iz+(40))=Facet_0_0_1_src__1_0_0_dest__1_0_1_Recv%Ridge_0_0_1_Om_92_r__1_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(0))=Facet_1_0_0_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_0_Om_92_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(2))=Facet_1_0_0_src__0_0_1_dest__1_0_1_Recv%Ridge_1_0_0_Om_92_r__0_0_1_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  2
             Rsc0(ix+(264), iy+(0), iz+(40))=Facet_1_0_1_src__0_0_0_dest__1_0_1_Recv%Ridge_1_0_1_Om_92_r__0_0_0_r__1_0_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 35 ,  74 ,  1 

       do  iy = 11 ,  34 ,  1 

          do  ix = 259 ,  522 ,  1 

             a=Rsc1(ix+(-257), iy+(-9), iz+(-33))
             a_0=Rsc0(ix+(-257), iy+(-9), iz+(-33))

 U(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(-256), iy+(-9), iz+(-33)) - a ) &
- ( a - Rsc1(ix+(-258), iy+(-9), iz+(-33)) ) ) + ( ( Rsc1(ix+(-257), iy+(-8), iz+(-33)) - a ) - ( a - Rsc1(ix+(-257), iy+(-10), iz+(-33)) ) ) ) + ( ( Rsc1(ix+(-257), iy+(-9), iz+(-32)) - a ) - ( a - Rsc1(ix+(-257), iy+(-9), iz+(-34)) ) ) ) ) ) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_101

  subroutine Formura_internal_102 ()
    double precision  :: a
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 35 ,  74 ,  1 

       do  iy = 11 ,  34 ,  1 

          do  ix = 259 ,  522 ,  1 

             a=Rsc0(ix+(-257), iy+(-9), iz+(-33))

 V(ix+(-8)+(0), iy+(-8)+(0), iz+(-8)+(0))=( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(-257), iy+(-9), iz+(-33)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(-256), iy+(-9), iz+(-33)) &
- a ) - ( a - Rsc0(ix+(-258), iy+(-9), iz+(-33)) ) ) + ( ( Rsc0(ix+(-257), iy+(-8), iz+(-33)) - a ) - ( a - Rsc0(ix+(-257), iy+(-10), iz+(-33)) ) ) ) + ( ( Rsc0(ix+(-257), iy+(-9), iz+(-32)) - a ) - ( a - Rsc0(ix+(-257), iy+(-9), iz+(-34)) ) ) ) ) &
) ) )

          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_102

  subroutine Formura_internal_103 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  512
             U(ix+(2), iy+(66), iz+(66))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_St_U(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  512
             V(ix+(2), iy+(66), iz+(66))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_St_V(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  28 ,  1 

       do  iy = 3 ,  28 ,  1 

          do  ix = 1 ,  262 ,  1 

             a=U(ix+(3), iy+(39), iz+(39))
             a_0=V(ix+(3), iy+(39), iz+(39))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( U(ix+(4), iy+(39), iz+(39)) - a ) - ( a - U(ix+(2), &
iy+(39), iz+(39)) ) ) + ( ( U(ix+(3), iy+(40), iz+(39)) - a ) - ( a - U(ix+(3), iy+(38), iz+(39)) ) ) ) + ( ( U(ix+(3), iy+(39), iz+(40)) - a ) - ( a - U(ix+(3), iy+(39), iz+(38)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Ridge_0_0_0_Om_79_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(260), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_79_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_103

  subroutine Formura_internal_104 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  28 ,  1 

       do  iy = 3 ,  28 ,  1 

          do  ix = 1 ,  262 ,  1 

             a=V(ix+(3), iy+(39), iz+(39))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * U(ix+(3), iy+(39), iz+(39)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( V(ix+(4), iy+(39), iz+(39)) - a ) - ( a - V(ix+(2), &
iy+(39), iz+(39)) ) ) + ( ( V(ix+(3), iy+(40), iz+(39)) - a ) - ( a - V(ix+(3), iy+(38), iz+(39)) ) ) ) + ( ( V(ix+(3), iy+(39), iz+(40)) - a ) - ( a - V(ix+(3), iy+(39), iz+(38)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Ridge_0_0_0_Om_80_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(260), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  26
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_80_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_104

  subroutine Formura_internal_105 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_79_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_79_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_79_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(0), iz+(28))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_79_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(2), iz+(28))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_79_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(28), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_79_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(28), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_79_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc0(ix+(0), iy+(28), iz+(28))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_79_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_80_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_80_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_80_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(0), iz+(28))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_80_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  26
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(2), iz+(28))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_80_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(28), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_80_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  26
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(28), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_80_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  262
             Rsc1(ix+(0), iy+(28), iz+(28))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_80_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  30 ,  1 

       do  iy = 3 ,  30 ,  1 

          do  ix = 1 ,  260 ,  1 

             a=Rsc0(ix+(1), iy+(-1), iz+(-1))
             a_0=Rsc1(ix+(1), iy+(-1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc0(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc0(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc0(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Ridge_0_0_0_Om_81_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(258), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_81_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_105

  subroutine Formura_internal_106 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  30 ,  1 

       do  iy = 3 ,  30 ,  1 

          do  ix = 1 ,  260 ,  1 

             a=Rsc1(ix+(1), iy+(-1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc1(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc1(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc1(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Ridge_0_0_0_Om_82_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(258), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  28
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_82_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_106

  subroutine Formura_internal_107 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_81_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_81_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_81_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(0), iz+(30))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_81_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(2), iz+(30))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_81_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(30), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_81_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(30), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_81_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc2(ix+(0), iy+(30), iz+(30))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_81_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_82_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_82_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_82_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(0), iz+(30))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_82_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  28
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(2), iz+(30))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_82_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(30), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_82_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  28
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(30), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_82_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  260
             Rsc3(ix+(0), iy+(30), iz+(30))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_82_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  32 ,  1 

       do  iy = 3 ,  32 ,  1 

          do  ix = 1 ,  258 ,  1 

             a=Rsc2(ix+(1), iy+(-1), iz+(-1))
             a_0=Rsc3(ix+(1), iy+(-1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc2(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc2(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc2(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(256), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_83_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_107

  subroutine Formura_internal_108 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  32 ,  1 

       do  iy = 3 ,  32 ,  1 

          do  ix = 1 ,  258 ,  1 

             a=Rsc3(ix+(1), iy+(-1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc3(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc3(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc3(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Ridge_0_0_0_Om_84_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(256), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  30
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_84_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_108

  subroutine Formura_internal_109 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_83_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_83_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_83_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(0), iz+(32))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_83_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(2), iz+(32))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_83_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(32), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_83_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(32), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_83_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc1(ix+(0), iy+(32), iz+(32))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_83_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_84_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_84_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_84_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(0), iz+(32))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_84_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  30
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(2), iz+(32))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_84_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(32), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_84_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  30
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(32), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_84_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Rsc0(ix+(0), iy+(32), iz+(32))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_84_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  34 ,  1 

       do  iy = 3 ,  34 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc1(ix+(1), iy+(-1), iz+(-1))
             a_0=Rsc0(ix+(1), iy+(-1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc1(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc1(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc1(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_85_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(254), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_85_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_109

  subroutine Formura_internal_11 ()
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
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_83_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(256), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Ridge_0_0_0_Om_83_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Ridge_0_0_0_Om_83_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Ridge_0_0_0_Om_83_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(256), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  258
             Facet_0_0_1_src__0_0_0_dest__0_0_1_Send%Ridge_0_0_1_Om_83_r__0_0_0_r__0_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_0_0_1_Om_83_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_0_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_0_1_Om_83_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_0_1_Om_83_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(256), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__0_0_0_dest__0_1_0_Send%Ridge_0_1_0_Om_83_r__0_0_0_r__0_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_0_1_0_Om_83_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_0_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_0_Om_83_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_0_Om_83_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  258
             Facet_0_1_1_src__0_0_0_dest__0_1_1_Send%Ridge_0_1_1_Om_83_r__0_0_0_r__0_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_0_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_0_1_1_Om_83_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(256), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_0_Send%Ridge_1_0_0_Om_83_r__0_0_0_r__1_0_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_0_0_Om_83_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_0_Om_83_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_0_Om_83_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_0_1_Send%Ridge_1_0_1_Om_83_r__0_0_0_r__1_0_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_0_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_0_1_Om_83_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(32), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_0_Send%Ridge_1_1_0_Om_83_r__0_0_0_r__1_1_0(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_0_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_0_Om_83_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(32))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  2
             Facet_1_1_1_src__0_0_0_dest__1_1_1_Send%Ridge_1_1_1_Om_83_r__0_0_0_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(0), iz+(0))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_11

  subroutine Formura_internal_110 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  34 ,  1 

       do  iy = 3 ,  34 ,  1 

          do  ix = 1 ,  256 ,  1 

             a=Rsc0(ix+(1), iy+(-1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc1(ix+(1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc0(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc0(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc0(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Ridge_0_0_0_Om_86_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(254), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  32
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_86_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_110

  subroutine Formura_internal_111 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_85_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_85_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_85_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(0), iz+(34))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_85_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(2), iz+(34))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_85_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(34), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_85_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(34), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_85_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc3(ix+(0), iy+(34), iz+(34))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_85_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_86_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_86_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_86_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(0), iz+(34))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_86_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  32
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(2), iz+(34))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_86_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(34), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_86_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  32
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(34), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_86_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  256
             Rsc2(ix+(0), iy+(34), iz+(34))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_86_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  36 ,  1 

       do  iy = 3 ,  36 ,  1 

          do  ix = 1 ,  254 ,  1 

             a=Rsc3(ix+(1), iy+(-1), iz+(-1))
             a_0=Rsc2(ix+(1), iy+(-1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc3(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc3(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc3(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_87_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(252), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_87_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_111

  subroutine Formura_internal_112 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  36 ,  1 

       do  iy = 3 ,  36 ,  1 

          do  ix = 1 ,  254 ,  1 

             a=Rsc2(ix+(1), iy+(-1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc3(ix+(1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc2(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc2(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc2(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Ridge_0_0_0_Om_88_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(252), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  34
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_88_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_112

  subroutine Formura_internal_113 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_87_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_87_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_87_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(0), iz+(36))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_87_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(2), iz+(36))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_87_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(36), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_87_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(36), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_87_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc0(ix+(0), iy+(36), iz+(36))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_87_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_88_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_88_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_88_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(0), iz+(36))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_88_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  34
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(2), iz+(36))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_88_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(36), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_88_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  34
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(36), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_88_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  254
             Rsc1(ix+(0), iy+(36), iz+(36))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_88_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  38 ,  1 

       do  iy = 3 ,  38 ,  1 

          do  ix = 1 ,  252 ,  1 

             a=Rsc0(ix+(1), iy+(-1), iz+(-1))
             a_0=Rsc1(ix+(1), iy+(-1), iz+(-1))

 Rsc2(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc0(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc0(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc0(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc0(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc0(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc0(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_89_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(250), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_89_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc2(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_113

  subroutine Formura_internal_114 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  38 ,  1 

       do  iy = 3 ,  38 ,  1 

          do  ix = 1 ,  252 ,  1 

             a=Rsc1(ix+(1), iy+(-1), iz+(-1))

 Rsc3(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc0(ix+(1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc1(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc1(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc1(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc1(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc1(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc1(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Ridge_0_0_0_Om_90_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(250), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  36
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_90_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc3(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_114

  subroutine Formura_internal_115 ()
    double precision  :: a
    double precision  :: a_0
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_89_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_89_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_89_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(0), iz+(38))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_89_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(2), iz+(38))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_89_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(38), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_89_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(38), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_89_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc2(ix+(0), iy+(38), iz+(38))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_89_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(0), iz+(0))=Ridge_0_0_0_Om_90_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(2), iz+(0))=Ridge_0_0_0_Om_90_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(0), iz+(2))=Ridge_0_0_0_Om_90_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(0), iz+(38))=Facet_0_0_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_90_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  36
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(2), iz+(38))=Facet_0_0_1_src__0_1_0_dest__0_1_1_Recv%Ridge_0_0_1_Om_90_r__0_1_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(38), iz+(0))=Facet_0_1_0_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_0_Om_90_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  36
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(38), iz+(2))=Facet_0_1_0_src__0_0_1_dest__0_1_1_Recv%Ridge_0_1_0_Om_90_r__0_0_1_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  2
       do iy = 1 ,  2
          do ix = 1 ,  252
             Rsc3(ix+(0), iy+(38), iz+(38))=Facet_0_1_1_src__0_0_0_dest__0_1_1_Recv%Ridge_0_1_1_Om_90_r__0_0_0_r__0_1_1(ix, iy, iz)
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz, a, a_0)
    do  iz = 3 ,  40 ,  1 

       do  iy = 3 ,  40 ,  1 

          do  ix = 1 ,  250 ,  1 

             a=Rsc2(ix+(1), iy+(-1), iz+(-1))
             a_0=Rsc3(ix+(1), iy+(-1), iz+(-1))

 Rsc1(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( (-( ( ( ( 1.0 / 900.0 ) * a ) * a_0 ) * a_0 )) + ( ( 1.0 / 86400.0 ) * ( 1.0 - a ) ) ) + ( ( ( 0.1 * 2.3e-9 ) * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc2(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc2(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc2(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc2(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc2(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc2(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_91_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(248), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_91_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc1(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_115

  subroutine Formura_internal_116 ()
    double precision  :: a
    integer :: ix
    integer :: iy
    integer :: iz
    !$omp parallel

    !$omp do collapse(2) private(ix, iy, iz, a)
    do  iz = 3 ,  40 ,  1 

       do  iy = 3 ,  40 ,  1 

          do  ix = 1 ,  250 ,  1 

             a=Rsc3(ix+(1), iy+(-1), iz+(-1))

 Rsc0(ix+(0), iy+(0), iz+(0))=(+( a + ( 200.0 * ( ( ( ( ( ( 1.0 / 900.0 ) * Rsc2(ix+(1), iy+(-1), iz+(-1)) ) * a ) * a ) - ( ( 6.0 / 86400.0 ) * a ) ) + ( ( 6.1e-11 * ( 1000.0 * 1000.0 ) ) * ( ( ( ( Rsc3(ix+(2), iy+(-1), iz+(-1)) - a ) - ( a - &
Rsc3(ix+(0), iy+(-1), iz+(-1)) ) ) + ( ( Rsc3(ix+(1), iy+(0), iz+(-1)) - a ) - ( a - Rsc3(ix+(1), iy+(-2), iz+(-1)) ) ) ) + ( ( Rsc3(ix+(1), iy+(-1), iz+(0)) - a ) - ( a - Rsc3(ix+(1), iy+(-1), iz+(-2)) ) ) ) ) ) ) ))

          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Ridge_0_0_0_Om_92_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(248), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp do collapse(2) private(ix, iy, iz)
    do iz = 1 ,  38
       do iy = 1 ,  38
          do ix = 1 ,  2
             Facet_1_0_0_src__0_1_1_dest__1_1_1_Send%Ridge_1_0_0_Om_92_r__0_1_1_r__1_1_1(ix, iy, iz)=Rsc0(ix+(0), iy+(2), iz+(2))
          end do
       end do
    end do

    !$omp end parallel


  end subroutine Formura_internal_116


end module finalist_internal_0

