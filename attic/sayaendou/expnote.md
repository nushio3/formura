
# さやえんどう実験

## 目的

我々はPearson方程式アプリを題材に、Formuraから生成したコードの最適化に取りくんできた。

ゴードン・ベル賞に提出した時点でのコードは、

- 重複した演算を生成していた。
- Temporal BlockのサイズをL2キャッシュに当たるほど小さくすると、浮動小数点演算性能が出ない

など、Temporal Blockingを活用できていなかった。

京コンピュータ上で、Temporal Blockingの真の性能を引き出す方法はあるのか？
それとも、本当に京コンピュータ上ではどんなにしてもTemporal Blockingモデルで期待されるような理想的性能は出せないのかを
検証する必要がある。


## 実験０

というわけで現時点でのFormura生成コードをこれ以上自動最適化しても、
Temporal Blockingの真の性能を引き出す方法という意味での知見が得られるわけではないのだが、
自動チューニングを走らせる人的コストはタダなので、ゴールデンウィーク中走らせておいた。

## 結果０

~~ちょっと信じられないことに、ゴードン・ベル賞に提出したバージョン `pt-115` より２倍以上速くなっていた。~~


```
14.6606 pt-115/out/output_prof_X3.txt
33.3668 pt-7620/out/output_prof_X3.txt
```


何が変わったか
```
$ diff pt-115/a.idv pt-7620/a.idv
2c2
< compiler_flags: ['-Karray_private', '-Kdynamic_iteration', '-Keval',
  '-Kfast,parallel', '-Kinstance=8', '-Klib', '-Kloop_fission',
  '-Kloop_part_parallel', '-Kloop_part_simd', '-Kocl', '-Kopenmp',
  '-Kreduction', '-Ksimd=2', '-O3']
---
> compiler_flags: ['-Kalias_const', '-Karray_private', '-Kdynamic_iteration',
  '-Keval', '-Kfast', '-Kinstance=8', '-Klib', '-Kloop_fission',
  '-Kloop_part_parallel', '-Koptmsg=2', '-Kprefetch_conditional',
  '-Kprefetch_strong', '-Kreduction', '-Ksimd=2', '-Kstriping', '-Kswp_strong']
```

コンパイルオプションおよび、


時間融合度の深さ２倍、TBサイズ変化

```
9,13c9,13
<     x: [29, 50]
<     y: [32]
<     z: [260]
<   intra_node_shape: [64,48,504]
<   monitor_interval: 32
---
>     x: [37, 58]
>     y: [43]
>     z: [528]
>   intra_node_shape: [64,54,1024]
>   monitor_interval: 16
15c15
<   temporal_blocking_interval: 8
---
>   temporal_blocking_interval: 16
```

**追加検証の結果、これはparallelオプションが消滅したせいで1コアでしか走らなかったための、みかけの性能向上であることがわかった。**
京のプロファイラは、「並列化されているのに実質1コアしか動かなかった場合」は1/8の性能を報告するが、「そもそもマルチコア化されていないプログラムの場合」は対1コア比で性能を報告する。注意が必要である。

## 実験１

そもそもTemporal Blocking分割を行わない、L2キャッシュに収まるような小さなシステムを更新するプログラムの性能がどこまで
出るかを測る。


結果

\begin{tabular}{c|r|r}
\hline
 Block Size    & MFLOPS/PEAK (\%) & MIPS/PEAK(\%) \\
 \hline
 $32^3$ &  3.7901  &  8.1642  \\
 $50^3$ &  26.0975  & 48.1072   \\
 $56^3$ & 24.7704   &  48.0389  \\
 \hline
\end{tabular}

- 性能はブロックサイズにかなり依存する。
- ブロックがキャッシュに収まらないようなサイズのコードのほうが速い。
- 対ピーク50\%以上の性能を出すのは難しいかもしれない。


## 実験２

Nanoblock Unrollを適用する。

\begin{tabular}{c|c|r|r}
\hline
 Block Size  &NBU  & MFLOPS/PEAK (\%) & MIPS/PEAK(\%) \\
 \hline
 $32^3$ &   &  3.7901  &   8.1642   \\
 $50^3$ &   & 26.0975  &  48.1072   \\
 $50^3$ & y2& 20.3481  &  39.7285   \\
 $50^3$ & x2& 27.1912  &  53.0092   \\
 $50^3$ &xy2& 19.0170  &  40.1916   \\
 $56^3$ &   & 24.7704  &  48.0389   \\
 \hline
\end{tabular}

## 実験３

上記NBUコードをプロファイルした結果、インデックス計算由来とみられる整数ロード・ストアが所要時間の３％をも占めていることを発見した。
これは非効率的なので、なんとかこの整数ロード・ストアを削除する方法を探った。

- コンパイルオプション`-Krestp=all`を外すと、整数ロード・ストアはほぼ無視できる程度に減る。その代わり、１コア以外はバリア同期待ちに陥る。
- restrict pointerを使わず、生配列で書いた場合、整数ロード・ストアのフットプリントは１％前後にまで減る（まだ多いか？）
- omp collapse forをしてみたり、`-Kdynamic_iteration`を切ってみたりしたが、結果はほぼほぼ変わらず

## 実験４

配列変数にかんする演算は、Fortranで書いたほうが性能が出る場合も多い。
そこで、
Fortranで書きなおしてみた。

\begin{tabular}{c|c|c|r|r|l}
\hline
 Lang & Block Size  &NBU  & MF/P (\%) & MI/P(\%) & other\\
 \hline
 c & $50^3$ & x2& 27.1912  &  53.0092   \\
 F & $50^3$ &   & 30.3171  &  46.8185   \\
 F & $50^3$ &   & 35.4771  &  50.0387  & pitch \\
 \hline
\end{tabular}

Fortranで書いたほうが性能が出ることがわかった。のみならず、命令数は減ったのに浮動小数点演算数は増えていることがわかる。

この35%の浮動小数点演算演算性能を出したコードを以下に示す。

```
#define NX 50
#define NY 50
#define NZ 50


program main
  implicit none

  double precision, dimension(NX,NY,NZ) :: u,v
  double precision, dimension(NX,NY,NZ) :: u_other,v_other
  integer t
  call init()

  call fapp_start("main", 0,0)
  call start_collection("kantai")
  do t = 1, 8*1024
     call proceed(u,v, u_other, v_other)
     call proceed(u_other,v_other, u, v)
  end do
  call stop_collection("kantai")
  call fapp_stop("main", 0,0)

  print *, u(25,25,25), v(25,25,25)

contains
  subroutine init()
    integer x,y,z
    do z = 1, NZ
       do y = 1, NY
          do x = 1, NX
             u(x,y,z) = 1.0
             v(x,y,z) = 0.0
          end do
       end do
    end do
    do z = NZ*4/10, NZ*6/10
       do y = NY*4/10, NY*6/10
          do x = NX*4/10, NX*6/10
             u(x,y,z) = 0.5
             v(x,y,z) = 0.25
          end do
       end do
    end do

  end subroutine init

  subroutine proceed(u,v,u_next,v_next)
    double precision, intent(in) ,dimension(NX,NY,NZ) :: u,v
    double precision, intent(out),dimension(NX,NY,NZ) :: u_next,v_next

    double precision, parameter :: rU = 1.0/86400.0, rV = 6.0/86400.0, rE = 1.0/900.0
    double precision, parameter :: Du = 2.3e-10, Dv = 6.1e-11, dt = 200, dx = 0.001
    double precision u0, v0, eat, du_dt, dv_dt, lap_u, lap_v
    integer x,y,z,x0,y0,z0

    do z0 = 1, NZ-2
       do y0 = 1, NY-2
          do x0 = 1, NX-2
             x=x0+1
             y=z0+1
             z=z0+1
             u0 = u(x,y,z)
             v0 = v(x,y,z)
             eat = rE * u0 * v0 * v0
             lap_u = u(x+1,y,z)+u(x-1,y,z)+u(x,y+1,z)+u(x,y-1,z)
               +u(x,y,z+1)+u(x,y,z-1)-6.0*u(x,y,z)
             lap_v = v(x+1,y,z)+v(x-1,y,z)+v(x,y+1,z)
               +v(x,y-1,z)+v(x,y,z+1)+v(x,y,z-1)-6.0*v(x,y,z)
             du_dt = -eat + rU * (1.0-u0) + Du/dx/dx * lap_u
             dv_dt =  eat - rV * v0 + Dv/dx/dx * lap_v
             u_next(x0,y0,z0) = u0 + du_dt * dt
             v_next(x0,y0,z0) = v0 + dv_dt * dt
          end do
       end do
    end do

  end subroutine proceed


end program main

```
以上、上述35%の浮動小数点演算演算性能を出したコードである。

なお、Fortran版のコードにz方向NBUを適用したところ、ループが６つほどに分割されたとのコンパイラーメッセージが出て、実行効率は8.8%程度に落ちてしまった。原因は調査中である。
