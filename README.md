# dxlib-d
## 同梱ファイル

- README.md
    - これ
- LICENSE
    - MITライセンスで提供されます
- dxlib.d
    - ポーティングライブラリ本体
- sample.d
    - サンプルプログラム
- dxlib-d.sh
- replace_simply.sed
- convert_typedef.sh
- template_winapi.d
    - 変換スクリプト群


## dxlib-d利用手順
### 必要なもの
- DMD
    - LDCやGDCでの動作は未確認です
- VisualC++
    - リンカが必要です
- 本家DXライブラリ本体
    - ライブラリファイルが必要です
    - VisualC++用のファイルを入手してください
    - 軽量化パッケージでも動きます
- dxlib-d
    - dxlib.dが必要です

### ビルド方法
1. sc.iniの設定
    64ビットでのコンパイルができるように
    VisualC++のリンカを指定してください

    ```ini
    [Environment64]
    LINKCMD=(VisualC++のlink.exeのパス)
    LIB=(DMD自体のライブラリのパス)
    LIB=%LIB%;(VisualC++のライブラリのパス)
    ```
2. ご自身のソースとdxlib.d、DXライブラリのlibファイル群を指定してコンパイル

    ```
    dmd -m64 source.d dxlib.d DxDrawFunc_x64 DxLibW_x64.lib ...
    ```
    必要なlibは

    ```
    dir *x64.lib | findstr -v "_vs20 DxLib_ DxUseCLib_"
    ```
    などで抽出できます。
    もっとも、pragma libを使用するなりMakefileを書くなりしたほうが良いでしょう。
    pragma libを使用したサンプルがリポジトリに同梱にしてありますので参考にしてください。


## dxlib-d自体の作成手順
### 必要なもの
- 本家DXライブラリ本体
    - ヘッダーファイルが必要です
- dxlib-d
    - 付属のスクリプト群が必要です
- bash, sed, iconv等(coreutils?、git等に付属)
    - スクリプトの実行に必要です
    - PortableGit2.6.4で動作確認をしています

### 変換方法
残念ながら完全自動化はできていません。
手動でソースをいじる必要があります。

1. dxlib-dとDXライブラリをダウンロードして展開
    DxLib.hとDxFunctionWin.hをdxlib-d.shのある場所に移動します。

2. 端末から

    ```
    bash dxlib-d.sh
    ```
    を実行して変換を待ちます。
    dxlib.dとdxfunctionwin.dが生成されます

3. dxfunctionwin.dから

    ```
    extern(C++, DxLib){
    ...
    }
    ```
    の中身をコピー
    dxlib.dの二つ目のextern(1700行目あたり)

    ```
    }
    ...
    extern(C++, DxLib){
    ```
    に上書き貼り付け
    現在(D2.069.2)のところnamespace付きexternを複数定義すると
    conflictが発生してしまうので消す必要があります


## 著作権表記
dxlib.dには自動及び手動変換されたDXライブラリのコードが含まれています。
DX Library Copyright (C) 2001-2015 Takumi Yamada.
