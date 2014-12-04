! 計算の次元を指定
parameter dimension = 2
! 解像度や精度を指定
parameter extent0 = 400
parameter extent1 = 300
parameter precision = double

! グローバル配列を宣言する構文
array A

! スタガードな配列を宣言する構文
array Sxx, Syy, Szz, Sxy(1/2,1/2,0), Sxz(1/2,0,1/2), Syz(0,1/2,1/2)

! サブルーチンを宣言する構文。Fortranのサブルーチンに翻訳される。
! index?, extent? はそれぞれ座標や空間のサイズを表す予約語である。 
subroutine init
  A = exp(0-(((index0 - extent0)/2)**2 + ((index1 - extent1)/2)**2)/100)
end subroutine init

! 簡単な二次元の拡散方程式の時間発展
subroutine proceed
  array B
  B = 1/3*(A(-1,0) + A + A(1,0))
  A = 1/3*(B(0,-1) + B + B(0,1))
end subroutine proceed

! 補間を定義する構文
! Uが整数格子点にある配列であった場合、以下の宣言をすることで(1/4,0,0)の位置でもアクセスできるようになる  
interpolate U(1/4,0,0) = (3*U+U(1,0,0))/4
