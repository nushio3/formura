# 開発経過


## 2016-02-24

時空をRegionに分割し、Region間で送受信すべき値を転送するアルゴリズムを生成できるようになった。
周期境界条件がシミュレーションできるようになった。
Pearson方程式でデモを行った。

- https://github.com/nushio3/formura/blob/master/examples-generated/pearson.fmr
- https://github.com/nushio3/formura/blob/master/examples-generated/pearson.nc


- https://github.com/nushio3/formura/blob/master/examples-generated/pearson.c
- https://github.com/nushio3/formura/blob/master/examples-generated/pearson.h
- https://github.com/nushio3/formura/blob/master/examples-generated/pearson-main.cpp



- https://www.youtube.com/watch?v=ywnziy-a2i8

- 京でPearson方程式のシミュレーションを実行できた。


### 手法

https://github.com/nushio3/formura/blob/master/examples-generated/pearson.log

![IMG1](https://github.com/nushio3/formura/blob/master/reference/IMG_5284.JPG)

![IMG1](https://github.com/nushio3/formura/blob/master/reference/IMG_5285.JPG)

### 課題

2次元MHDをテストしようとしたところ、生成するコードが大きすぎて、京でコンパイル出来ない模様

- https://github.com/nushio3/formura/blob/d1c4fe54ed90376ce0a7866c1f3df3c4740ad13a/examples-generated/2d-mhd.fmr
- https://raw.githubusercontent.com/nushio3/formura/0ccfdeb1e78c1be99fa353fc76aceb3ce9627fb7/examples-generated/2d-mhd.c

```
$ mpiFCCpx 2d-mhd.c 2d-mhd-main.cpp -o a.out -O3 -Kfast,parallel  -Kocl -Koptmsg=2 -Karray_private -Kinstance=8 -Kdynamic_iteration -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Keval  -Kreduction -Ksimd=2
2d-mhd.c:
//opt/FJSVtclang/GM-1.2.0-19/bin/../lib/ccpcompx: virtual memory exhausted
. . .
```



```
$ mpiFCCpx 2d-mhd.c  2d-mhd-main.cpp
2d-mhd.c:
/home/ra000008/a03209/FCCwbCubK.s: Assembler messages:
/home/ra000008/a03209/FCCwbCubK.s:50389: Warning: end of file in string; '"' inserted
/home/ra000008/a03209/FCCwbCubK.s:1: Error: can't resolve `.LSSN33501' {*UND* section} - `Formura_Forward' {*UND* section}
/home/ra000008/a03209/FCCwbCubK.s:2: Error: can't resolve `.LSSN33502' {*UND* section} - `Formura_Forward' {*UND* section}
/home/ra000008/a03209/FCCwbCubK.s:3: Error: can't resolve `.LSSN33503' {*UND* section} - `Formura_Forward' {*UND* section}
. . .

```

## TODO

- MHDを可能にする
    - 京でコンパイルできるようにコードをダウンサイズ・分割
    - RidgeをFacetにまとめて、MPI経由で送受信するようにする
- 堀田MHDの実装と再現・検証
    - div B cleaningを追加
    - Brio-Wu test, Orszag-Tangテストを実行
    - 重力加速度、加熱項を追加
    - http://arxiv.org/pdf/1502.03846v1.pdf Fig17を再現
- 大規模ジョブに向けて
    - 電力測定
    - 解像度・実行時間策定


![Fig17](https://github.com/nushio3/formura/blob/master/reference/Hotta.2015-Fig17.png)


## 資料

[C言語ユーザズマニュアル](file:///home/nushio/nushiolib/hardware/K-computer/manual/C_Users_Guide.pdf)
[PJMマニュアル](file:///home/nushio/nushiolib/hardware/K-computer/Pnavi_End_Users_Guide_z20151218_j.pdf)
