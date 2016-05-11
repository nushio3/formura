
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

```
14.6606 pt-115/out/output_prof_X3.txt
33.3668 pt-7620/out/output_prof_X3.txt
```

ちょっと信じられないことに、ゴードン・ベル賞に提出したバージョン `pt-115` より２倍以上速くなっていた。


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
 $64 \times 54 \times 1024 $& 33.3628 & 47.0537 \\
 \hline
\end{tabular}

- 性能はブロックサイズにかなり依存する。
- ブロックがキャッシュに収まらないようなサイズのコードのほうが速い。
- 対ピーク50\%以上の性能を出すのは難しいかもしれない。


## 実験２

PiTCH分割の１つのRegionの計算だけを再現する。つまり、あらかじめ十分大きな周期境界条件のシミュレーションをしておいて、
必要なFacetのデータを埋めておく。その上で、１つのRegionだけの計算をし、結果が期待通りになっていることを確認し、
そのときのベンチマークを測定する。
