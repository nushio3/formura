parameter dimension = 2
parameter extent0 = 400
parameter extent1 = 300
parameter precision = double

array A

array Sxx, Syy, Szz, Sxy(1/2,1/2,0), Sxz(1/2,0,1/2), Syz(0,1/2,1/2)

subroutine init
  A = exp(0-(((index0 - extent0)/2)**2 + ((index1 - extent1)/2)**2)/100)
end subroutine init

subroutine proceed
  B = 1/3*(A(-1,0) + A + A(1,0))
  A = 1/3*(B(0,-1) + B + B(0,1))
end subroutine proceed

