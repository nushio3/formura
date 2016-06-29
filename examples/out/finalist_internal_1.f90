module finalist_internal_1
  use finalist_header
contains
  subroutine Formura_internal_8 ()
    double precision  :: a
    double precision  :: a_0
    double precision  :: a_1
    double precision  :: a_10
    double precision  :: a_11
    double precision  :: a_12
    double precision  :: a_13
    double precision  :: a_14
    double precision  :: a_15
    double precision  :: a_16
    double precision  :: a_17
    double precision  :: a_18
    double precision  :: a_19
    double precision  :: a_2
    double precision  :: a_20
    double precision  :: a_21
    double precision  :: a_22
    double precision  :: a_23
    double precision  :: a_24
    double precision  :: a_25
    double precision  :: a_26
    double precision  :: a_27
    double precision  :: a_28
    double precision  :: a_29
    double precision  :: a_3
    double precision  :: a_30
    double precision  :: a_31
    double precision  :: a_32
    double precision  :: a_33
    double precision  :: a_4
    double precision  :: a_5
    double precision  :: a_6
    double precision  :: a_7
    double precision  :: a_8
    double precision  :: a_9
    integer :: ix
    integer :: iy
    integer :: iz

    do iz = 1 , 2
       do iy = 1 , 200
          do ix = 1 , 200
             U(ix+(2),iy+(2),iz+(202))=Facet_0_0_1_src_0_0_0_dest_0_0_1_Recv%Ridge_0_0_1_St_U(ix,iy,iz)
          end do
       end do
    end do


    do iz = 1 , 2
       do iy = 1 , 200
          do ix = 1 , 200
             V(ix+(2),iy+(2),iz+(202))=Facet_0_0_1_src_0_0_0_dest_0_0_1_Recv%Ridge_0_0_1_St_V(ix,iy,iz)
          end do
       end do
    end do


    do  iz = 102 , 203 , 1 

       do  iy = 4 , 101 , 1 

          do  ix = 4 , 101 , 1 

             a=U(ix+(-1),iy+(0),iz+(0))
             a_0=U(ix+(0),iy+(-1),iz+(0))
             a_1=U(ix+(0),iy+(0),iz+(-1))
             a_2=U(ix+(0),iy+(0),iz+(0))
             a_3=U(ix+(0),iy+(0),iz+(1))
             a_4=U(ix+(0),iy+(1),iz+(0))
             a_5=U(ix+(1),iy+(0),iz+(0))
             a_6=V(ix+(0),iy+(0),iz+(0))
             a_7=(1.0/86400.0)
             a_8=(1.0/900.0)
             a_9=(0.1*2.3e-9)
             a_10=(a_8*a_2)
             a_11=(a_10*a_6)
             a_12=(a_11*a_6)
             a_13=(-a_12)
             a_14=(1.0-a_2)
             a_15=(a_7*a_14)
             a_16=(a_13+a_15)
             a_17=(1.0e-3*1.0e-3)
             a_18=(a_9/a_17)
             a_19=(a_2-a)
             a_20=(a_5-a_2)
             a_21=(a_20-a_19)
             a_22=(a_2-a_0)
             a_23=(a_4-a_2)
             a_24=(a_23-a_22)
             a_25=(a_21+a_24)
             a_26=(a_2-a_1)
             a_27=(a_3-a_2)
             a_28=(a_27-a_26)
             a_29=(a_25+a_28)
             a_30=(a_18*a_29)
             a_31=(a_16+a_30)
             a_32=(200.0*a_31)
             a_33=(a_2+a_32)

             U(ix+(-1)+(0),iy+(-1)+(0),iz+(-1)+(0))=a_33

          end do
       end do
    end do


  end subroutine Formura_internal_8

  subroutine Formura_internal_9 ()
    double precision  :: a
    double precision  :: a_0
    double precision  :: a_1
    double precision  :: a_10
    double precision  :: a_11
    double precision  :: a_12
    double precision  :: a_13
    double precision  :: a_14
    double precision  :: a_15
    double precision  :: a_16
    double precision  :: a_17
    double precision  :: a_18
    double precision  :: a_19
    double precision  :: a_2
    double precision  :: a_20
    double precision  :: a_21
    double precision  :: a_22
    double precision  :: a_23
    double precision  :: a_24
    double precision  :: a_25
    double precision  :: a_26
    double precision  :: a_27
    double precision  :: a_28
    double precision  :: a_29
    double precision  :: a_3
    double precision  :: a_30
    double precision  :: a_4
    double precision  :: a_5
    double precision  :: a_6
    double precision  :: a_7
    double precision  :: a_8
    double precision  :: a_9

    do  iz = 102 , 203 , 1 

       do  iy = 4 , 101 , 1 

          do  ix = 4 , 101 , 1 

             a=U(ix+(0),iy+(0),iz+(0))
             a_0=V(ix+(-1),iy+(0),iz+(0))
             a_1=V(ix+(0),iy+(-1),iz+(0))
             a_2=V(ix+(0),iy+(0),iz+(-1))
             a_3=V(ix+(0),iy+(0),iz+(0))
             a_4=V(ix+(0),iy+(0),iz+(1))
             a_5=V(ix+(0),iy+(1),iz+(0))
             a_6=V(ix+(1),iy+(0),iz+(0))
             a_7=(6.0/86400.0)
             a_8=(1.0/900.0)
             a_9=(a_8*a)
             a_10=(a_9*a_3)
             a_11=(a_10*a_3)
             a_12=(a_7*a_3)
             a_13=(a_11-a_12)
             a_14=(1.0e-3*1.0e-3)
             a_15=(6.1e-11/a_14)
             a_16=(a_3-a_0)
             a_17=(a_6-a_3)
             a_18=(a_17-a_16)
             a_19=(a_3-a_1)
             a_20=(a_5-a_3)
             a_21=(a_20-a_19)
             a_22=(a_18+a_21)
             a_23=(a_3-a_2)
             a_24=(a_4-a_3)
             a_25=(a_24-a_23)
             a_26=(a_22+a_25)
             a_27=(a_15*a_26)
             a_28=(a_13+a_27)
             a_29=(200.0*a_28)
             a_30=(a_3+a_29)

             V(ix+(-1)+(0),iy+(-1)+(0),iz+(-1)+(0))=a_30

          end do
       end do
    end do


  end subroutine Formura_internal_9


end module finalist_internal_1
