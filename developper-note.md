# 開発経過

## 2016-06-28

将来の開発へのメモ。

Fortranの場合、変数の型宣言は関数の冒頭にまとめてもっていく必要がある。
現在はアドホックに対応しているが、これをまとめる仕組みが必要であろう。
現在宣言されている変数のリストを持つモナド、もしくは、ソースコード型に変数名を保持させ、
関数宣言のタイミングで、型宣言を生成させる。
生成セイクで優勝！

## 2016-06-02

おそらく、Formuraのユーザーを増やす上で、コンパイラメタ情報の正確な追跡はとても重要だ。
Formuraを書き直す機会があれば、現在のMaybeを使っているコンパイラメタ情報タグをMaybeを使わずに書き直すことを検討すべきだ。
また、HaskellやPython処理系のメタ情報追跡がどのようになっているか、調べることを検討したい。

## 2016-06-01

Formuraにはより明示的な配列操作セマンティクスが必要だ。


## 2016-03-22

- １ノードあたりのサイズ、関数生成粒度、omp/collapseの有無を変えて、72通りのベンチマーク
- 最速のもので対ピーク性能13%





## 2016-03-11

Kのログインノード上で-O3 -j8でのコンパイル時間
25m59.527s

## 2016-02-26

時空をRegionに分割し、Region間で送受信すべき値を転送するアルゴリズムを生成できるようになった。
従って周期境界条件がシミュレーションできるようになった。
Pearson方程式でデモを行った。

- Pearson方程式のFormuraソースコード
    - 主ソースコード https://github.com/nushio3/formura/blob/master/examples-generated/pearson.fmr
    - 数値計算設定ファイル https://github.com/nushio3/formura/blob/master/examples-generated/pearson.yaml

- Formuraが生成したコード
    - https://github.com/nushio3/formura/blob/master/examples-generated/pearson.c
    - https://github.com/nushio3/formura/blob/master/examples-generated/pearson.h
- ドライバーコード
    - https://github.com/nushio3/formura/blob/master/examples-generated/pearson-main.cpp


- シミュレーション結果動画
    - https://www.youtube.com/watch?v=ywnziy-a2i8

- 京でPearson方程式のシミュレーションを実行できた。


### コード生成手法

Formuraコンパイラのログを参照しながら、どういう処理をしているか解説する。

https://github.com/nushio3/formura/blob/master/examples-generated/pearson.log

![IMG1](https://github.com/nushio3/formura/blob/master/reference/IMG_5284.JPG)

計算時空間をMPIRankごとに分割。さらに１つのMPIRankの担当領域を複数の
Region = _(d+1)_次元の空間に分割し、これに順序IRankを割り振る。


![IMG1](https://github.com/nushio3/formura/blob/master/reference/IMG_5285.JPG)

_(d+1)_次元の部分空間Regionは、時間方向に見ると、
OMNodeID(Orthotope Machineの行番号)にそって次々に計算されていく。
ひとつの(IRank,OMNode)の計算結果に対応する_d_次元配列をResourceと呼ぶ。

ひとつの(IRank,OMNode)は、複数のResourceを読み取り、１つのResourceに値を書き込む計算である。この計算は次の手順で行う。

1. 以前のIRank、OMNodeIDが計算した袖領域のデータが必要ならば、Ridgeと呼ばれる配列に入っているはずなので、そこから値を入力Resource配列にコピーしてくる。
2. 実際の計算を行い、出力Resourceに計算結果を書き込む。
3. この計算結果を以降のIRank、OMNodeIDが必要としているならば、当該領域だけをRidgeにコピーする。

あるMPIRankが書き込んだRidgeは、同一のMPIRankが読む場合もあれば、異なるMPIRankが読む場合もある。
あるMPIRankから別のMPIRankへ送るべきRidgeをすべてまとめた構造体をFacetと呼ぶ。
Facet内のデータが揃った時点で`MPI_ISend`、および呼応する`MPI_IRecv`を呼び出す。
そして、Facet内のデータが最初に必要となった時点で`MPI_Wait`を呼び、データが揃うのを待つ。





`## Debug print: global environment of the simulation`

シミュレーション空間の次元dと、各座標軸の名前を認識

`## Debug print: simulation stat`

シミュレーションの状態変数の名前と型を認識

`## Debug print: init graph`, `## Debug print: step graph`

init関数 とstep関数のFormuraプログラムを、Orthotope Machine(巨大な多次元配列のベクトル演算を持つ仮想マシン)のデータフローグラフへ変換する。
行の頭に`M`がついているものはManifest変数(その値を表す配列変数を実際にメモリ上に確保する)
ついてないものはDelay変数(値を記憶せず、必要になるたび再計算する)

```
manifest node ID: [2,3]
manifest node ID: [29,49,51,53,54,55]
```

```
## Debug print: manifested init graph
## Debug print: manifested step graph
```

Orthotope Machine(OM)のグラフを、Manifestノードの計算ひとつごとにまとめた、Manifest Machine(MM)のグラフへ変換する。
MMにおいては、グラフの各ノードはOMのManifestノードに対応する。また、MMの演算命令は、OMのサブグラフになっている。


```
#### Allocation List ####
```
必要な状態変数、OMNode変数(Regionの空間断面)の名前とサイズを列挙


```
 Resource Sharing ####
```
OMNode変数のうち同時に使われないので使い回し可能なものを列挙

```
#### Ridge List ####
```
あるIRank から、異なるIRankへ送るべき部分の値を記憶するRidge配列変数を列挙

```
#### Program ####
```
次のような命令からなる、分散計算プログラムの雛形を生成

```
data DistributedInst
  = CommunicationRecv (MPIRank, IRank, IRank)      -- receive a facet via MPI
  | Unstage RidgeID                                -- copy from ridge to slice
  | Computation (IRank, OMNodeID) ArrayResourceKey -- compute a region slice and store them into the resource
  | FreeResource ArrayResourceKey                  -- mark the end of use for given resource
  | Stage RidgeID                                  -- copy from slice to ridge
  | CommunicationSend (MPIRank, IRank, IRank)      -- send a facet via MPI
```

`CommunicationSend`命令、
`CommunicationRecv`命令は未実装。

最終的に、`DistributedInst`の列から、MPIプログラムを生成する。


### 課題

2次元MHDをテストしようとしたところ、生成するコードが大きすぎて（数万行の１つの関数を含む）、京でコンパイル出来ない。

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

生成するコードを、空間ループごとに独立した関数を生成し、時間発展ループから呼び出すようなコードにしたところ、
正常にコンパイルが実行されている。
2月24日時点でコンパイル開始＞結果待ち


```
...
2d-mhd.c:
//opt/FJSVtclang/GM-1.2.0-19/bin/../lib/ccpcompx: virtual memory exhausted
...
real	74m26.638s
user	0m0.040s
sys	0m0.016s
```
### 課題２

div-B cleaningを入れて
Orszag-Tangテストを実行できるようになったが、数値不安定が発生している。


## TODO

- 分散計算を可能にする
    - RidgeをFacetにまとめて、MPI経由で送受信するようにする> Facetにまとめず生Ridgeを通信
    - OMNode配列の使い回し（OMのレジスタ割付最適化）を実装する>Done.
    - 現状では酷似したコードをたくさん重複して生成しているので、それらを共通のサブルーチン化>TODO
        - コンパイル時間の短縮
        - 64kの命令キャッシュにプログラムを収める
- DJに向けて
    - 電力測定>Submitted. 64^3/node, 22^3 nodes, 20 minutes
        - `-O0`でコンパイルしたもの投稿済み
        - `-O3`でコンパイル中
    - 解像度・実行時間策定
- Hotta(2015)MHDの実装と再現・検証
    - 数値散逸した運動エネルギー、磁場エネルギーをエントロピーに加算する項を追加>Done.
    - Brio-Wu test(1次元衝撃波管)を実行>TODO.
    - Orszag-Tangテスト(２次元波動)>長時間走った後、密度が負になって落ちる。
    - 8-wave div B cleaningを試す？>TODO.
    - 重力加速度、加熱項を追加>TODO.
    - http://arxiv.org/pdf/1502.03846v1.pdf Fig17を再現>TODO.



![Fig17](https://github.com/nushio3/formura/blob/master/reference/Hotta.2015-Fig17.png)

(上図)Hotta et al. (2015b) より、太陽対流層の物理過程別のエネルギーフラックス

## 資料

[C言語ユーザズマニュアル](file:///home/nushio/nushiolib/hardware/K-computer/manual/C_Users_Guide.pdf)
[PJMマニュアル](file:///home/nushio/nushiolib/hardware/K-computer/Pnavi_End_Users_Guide_z20151218_j.pdf)
