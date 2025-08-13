<!-- 英語のルビは easy wan nyan nyan -->
# <ruby>EasyWan22<rt>ｲｰｼﾞｰﾜﾝﾆｬﾝﾆｬﾝ</rt></ruby>

[English README](README_en.md)

Wan 2.2 **I2V-A14B** が Win PC の RAM 32GB, Geforce RTX 30x0 以降の VRAM 8GB 以上なら普通に動きます。  
RAM 16GB でも我慢できるかも？なので、気になるようなら試してみてください。  
Geforce RTX 3060 12GB なら長辺 1024px 101フレームや、長辺 704px 241フレームが生成できます。

[Wan 2.2 **I2V-A14B** が **RAM 16GB**, Geforce **GTX 1660Ti VRAM 6GB** でもなんとか動きます。](https://yyy.wpx.jp/2025/08/EasyWan22_I2V-A14B_Vram6GB_Ram16GB.mp4)  
`Easy/I2V` ワークフロー変更点: 長辺 384px, T5 gpu->cpu fp8_e4m3fn->none, sageattn->sdpa

動画の量産時の手数を減らすためにワークフローが大きめです。  
ComfyUI の学習などには不向きですので、それらが目的の方は、[SimpleComfyUi](https://github.com/Zuntan03/SimpleComfyUi) をご利用ください。

## 利用者の声

記事

- 8/11:『[無料の動画生成AI「Wan2.2」が凄すぎる　PCローカルでこの品質が出せるとは](https://ascii.jp/elem/000/004/312/4312173/)』
	- [p. 5「導入にあたっては、Zuntanさんの「EasyWan22」の環境が迷わず設定できておすすめです。」](https://ascii.jp/elem/000/004/312/4312173/5/)
- 8/5:『[ローカル環境でWan2.2のimg2videoを試してみた](https://kagaseo.blog.jp/archives/29271567.html)』
- 7/31:『[Wan2.2が簡単に使える「EasyWan22」の使い方](https://note.com/aiaicreate/n/n0c24cf1a8035)』

作例

- 作例を追う時間が取れなくなってきています。最新状況は [こちら](https://x.com/search?q=%22easywan22%22&src=typed_query&f=live) でどうぞ。
- 8/12: [@studiomasakaki](https://x.com/studiomasakaki/status/1955098988962881757), [@yimamura](https://x.com/yimamura/status/1955222752786518075), [@YTxscc4lOtBHTKy](https://x.com/YTxscc4lOtBHTKy/status/1955116517236117530), [@magchan360](https://x.com/magchan360/status/1955002379453206753), [@ugoku_yeah](https://x.com/ugoku_yeah/status/1954922640612966735)
- 8/11: [@kuromonchaya](https://x.com/kuromonchaya/status/1954619427124924785), [@OkogeOnigiri](https://x.com/OkogeOnigiri/status/1954831538333372507), [@sirsirtaro_sub](https://x.com/sirsirtaro_sub/status/1954819183570497709), [@magchan360](https://x.com/magchan360/status/1954809827680457138) [2](https://x.com/magchan360/status/1954801881525764422) [3](https://x.com/magchan360/status/1954652281967927692), [@sirsirtaro29](https://x.com/sirsirtaro29/status/1954786781960011873), [@virtuarian](https://x.com/virtuarian/status/1954742657475023293), [@akasetouta](https://x.com/akasetouta/status/1954720972533338167)
- 8/10: [@RistyFalette](https://x.com/RistyFalette/status/1954342340866486548)
- 8/9: [@ramnacolumn](https://x.com/ramnacolumn/status/1954157838055715096), [@erot_ai](https://x.com/erot_ai/status/1954140200751308810), [@yobo_41](https://x.com/yobo_41/status/1953847312498774356), [@magchan360](https://x.com/magchan360/status/1954122025737367567)
- 8/8: [@croblz25](https://x.com/croblz25/status/1953652991799795842), [@tottarkun](https://x.com/tottarkun/status/1953784103523815471)
- 8/7: [@tottarkun](https://x.com/tottarkun/status/1953400449350160771)
- 8/6: [@Kuze0x0_](https://x.com/Kuze0x0_/status/1953037332489355689), [@Akiya_Saisei_PM](https://x.com/Akiya_Saisei_PM/status/1953099647842488603), [@yukimino_doga](https://x.com/yukimino_doga/status/1952972105630597241), [@wisperingcat](https://x.com/wisperingcat/status/1952894649791857146)
- 8/5: [@aryn_ra](https://x.com/aryn_ra/status/1952534391500185683), [@takey_21](https://x.com/takey_21/status/1952712030412271638)
- 8/4: [@studiomasakaki](https://x.com/studiomasakaki/status/1952222138762768553), [@croblz25](https://x.com/croblz25/status/1952325277960622547), [@RistyFalette](https://x.com/RistyFalette/status/1952380739095547936), [@Artemi_AI](https://x.com/Artemi_AI/status/1952357042066428116), [@ojihotaren](https://x.com/ojihotaren/status/1952346242580922672)
- 8/3: [@yukimino_doga](https://x.com/yukimino_doga/status/1951947103095476427) [2](https://x.com/yukimino_doga/status/1951886943588901017), [@kuromonchaya](https://x.com/kuromonchaya/status/1951983575420522602), [@aoi_yotsub16292](https://x.com/aoi_yotsub16292/status/1952052870397984795) [2](https://x.com/aoi_yotsub16292/status/1952015286774960406) [3](https://x.com/aoi_yotsub16292/status/1951990309266886843), [@remote_komusou](https://x.com/remote_komusou/status/1951792261420966189), [@ramnacolumn](https://x.com/ramnacolumn/status/1951921310218723353), [@NegiTurkey](https://x.com/NegiTurkey/status/1952135962324300120), [@nellygem888](https://x.com/nellygem888/status/1951966481043841362), [@municocco](https://x.com/municocco/status/1951858568929718562)
- 8/2: [@yukimino_doga](https://x.com/yukimino_doga/status/1951447771086725594), [@nellygem888](https://x.com/nellygem888/status/1951302176556589368) [2](https://x.com/nellygem888/status/1951313234662924646), [@iitomyii](https://x.com/iitomyii/status/1951352115835838685)
- 8/1: [@BeamManP](https://x.com/BeamManP/status/1950969267484238201), [@kagami_kami_m](https://x.com/kagami_kami_m/status/1951218120171106682), [@Kuze0x0_](https://x.com/Kuze0x0_/status/1950953805618835893), [@m_gen_chan](https://x.com/m_gen_chan/status/1951116909933633797), [@kp4114](https://x.com/kp4114/status/1951150976116859195), [@yukimino_doga](https://x.com/yukimino_doga/status/1950816818408374735) [2](https://x.com/yukimino_doga/status/1951263437939425350) [3](https://x.com/yukimino_doga/status/1950768548600770891), [@kp4114](https://x.com/kp4114/status/1951150976116859195), [@croblz25](https://x.com/croblz25/status/1950944166097326435)
- 7/31: [@Emanon_14](https://x.com/Emanon_14/status/1950892068705841599), [@yukimino_doga](https://x.com/yukimino_doga/status/1950761171797377392) [2](https://x.com/yukimino_doga/status/1950878350257312142)

## インストール方法

1. [EasyWan22Installer.bat](https://github.com/Zuntan03/EasyWan22/raw/main/EasyWan22/EasyWan22Installer.bat?ver=0) を右クリックから保存します。
	- デフォルトでは [ComfyUI 公式が推奨している Python 3.12](https://github.com/comfyanonymous/ComfyUI#manual-install-windows-linux) を使用します。  
	未検証とはなりますが [EasyWan22Installer-Python3_10.bat](https://github.com/Zuntan03/EasyWan22/raw/main/EasyWan22/EasyWan22Installer-Python3_10.bat?ver=0) でインストールすると Python 3.10 系を利用できます。
		- 環境依存の問題で、Python 3.10 でないと動作しない環境もあるようです。  
		インストールや起動に失敗する場合は、Python 3.10 系でのインストールを試してみてください。
2. インストール先の **空フォルダ** を `C:/EasyWan22/` や `D:/EasyWan22/` などの浅いパスに用意して、`EasyWan22Installer.bat` を置いて実行します。
	- **`発行元を確認できませんでした。このソフトウェアを実行しますか？` と表示されたら `実行` します。**
	- **`WindowsによってPCが保護されました` と表示されたら、`詳細表示` から `実行` します。**
	- **`Microsoft Visual C++ 2015-2022 Redistributable` のインストールで `このアプリがデバイスに変更を加えることを許可しますか？` と表示されたら `はい` とします。**
	- **必要なファイルのダウンロードに [Civitai](https://civitai.com/) API キーが必要ですので、画面の案内や [ノウハウ](https://www.google.com/search?q=civitai+api+key) に沿って入力してください。**

## 使い方

- `ComfyUi.bat` で起動します。
	- **[ 注意 ][ ComfyUI の罠 ][ 被害者多め ]  
	初回起動時にブラウザキャッシュにある過去のワークフローが開かれ、エラーになる場合があります。  
	エラーを無視してワークフローを閉じてください。**
- `Update.bat` で更新します。
	- 更新時のファイルの自動ダウンロードは `EasyWan22/AutoDownload_(Enable|Disable).bat` で切り替えられます。  
	ただし、無効にすると更新で `Easy/*` のワークフローが正常に動作しなくなる可能性があります。

1. **`ComfyUI.bat` を起動したら `Easy/00_I2V(ImageToVideo)` ワークフローを開いて、ワークフロー内の上部にある説明を左上から確認してください。**  
そのまま `実行する` で動画を生成します。

**`Sample/` にワークフロー付きの作例があります。**  
**作例ではアップスケールやフレーム補間などの仕上げの後処理が有効になっています。**  
**作例を元にシードガチャをする場合は、後処理を無効にしてからガチャってください。**

## AI ツールの大きなモデルによる SSD 寿命への影響

AI ツールの大きなモデルによる SSD 寿命への影響について、正確でない情報を元に必要以上に懸念されている場合があります。

安全を保証することはできませんが、心配な方は [CrystalDiskInfo](https://forest.watch.impress.co.jp/library/software/crdiskinfo/) [[日本語](https://crystalmark.info/ja/download/#CrystalDiskInfo)] [[英語](https://crystalmark.info/en/download/#CrystalDiskInfo)] の `健康状態` などを元に判断ください。  

SSD 寿命に限らず PC は壊れるときは壊れます。本当に大切なデータはバックアップしましょう。

### より詳細な説明

仮想メモリは物理メモリが不足している場合に、SSD などのディスク上のページファイルを使用してメモリを拡張する仕組みです。  
AI ツールの大きなモデルが物理メモリに収まりきらない場合、ページファイルに書き込むことでモデルの一部をディスク上に置くことがあります。

AI ツールのサイズが大きいために心配になってしまいますが、実際の利用状況での積算書き込み量を元に判断してください。  
SSD の読み込み量は、一般的には寿命への影響が軽微とされています。

1. CrystalDiskInfo で SSD の型番と `総書き込み量` を手元に記録する。
2. SSD の型番と TBW (Total Bytes Written) で検索し、SSD の総書き込みの想定量を確認する。
3. AIツールを一週間程度使用し CrystalDiskInfo で、`総書き込み量` の変化を TBW と比較する。
4. さらに不安を解消したい場合は、以降も定期的に CrystalDiskInfo でドライブの `健康状態` を確認する。

SSD が複数ある場合は、`健康状態` の良い SSD にページファイルを移すことで、より安定的な運用が期待できます。  
ページファイルの配置場所は Windows の `システムの詳細設定 - パフォーマンス オプション - 詳細設定` にある `仮想メモリ` で変更できます。  
**AI 系のツールでは、`カスタム サイズ` ではなく `システム管理サイズ` がトラブル回避のために推奨されています。**  
**HDD などの遅いディスクにページファイルを設定すると、PC 全体の速度が低下する恐れがあります。**

`タスクマネージャー` の `パフォーマンス-ディスク` タブの情報は読み込みも影響しますので、SSD の寿命を心配する観点では不適切です。  
数回の生成ではなく、一週間程度の実際の利用状況を元に判断してください。

## 最近の更新履歴

[更新履歴](https://github.com/Zuntan03/EasyWan22/wiki/ChangeLog)

<!-- README.md を英訳して README_en.md を更新します。更新履歴をよく更新します。Wikiのリンク先ページは日本語と英語で切り替えることに注意。 -->

現在、ドキュメントの更新が追いついていません。

### 2025/08/13

- 汎用 NSFW LoRA の汎用っぷりと `I2V` ワークフローの量産性を確認するサンプルを追加しました。
	- 過去のお気に入り画像をフォルダ指定で読み込んで、プリセットをそのままで生成してるだけです。
- Sigmas を無効化できるようにする `Use Sigmas` を追加しました。

### 2025/08/12

- `Refiner` の設定を詰めました。
- 生成完了時の通知に対応しました。
	- `SystemNotification` ノードで無効にできます。
- `TextEncoder` のデフォルトを `Native` から `Kijai` に変更しました。
	- fp8 が `scaled` でないため精度は落ちますが、GPU が利用されないことがある問題の回避と、ディスクキャッシュ対応のメリットがあります。
- アセット用 Webp 保存はフレーム補間の対象としないようにしました。
- 『利用者の声』を更新しました。
- サンプルに `20250812-GeneralNsfw_A~D` の 4種を追加しました。
	- フォルダに放り込んだ過去の画像を `LoadImageFrom` でランダム読み込みして、`GeneralNsfw` プリセットで生成しただけのモノです。
	- V2V な Refiner でフキダシの漢字が復活しているのと、流体シミュレーションが見どころです。

### 2025/08/11

- 高速化のために、高速化 LoRA ベイク済みの GGUF を利用するように変更しました。
	- `Download/diffusion_models/FastMix/*.bat` で、より高精度なモデルをダウンロードできます。
- `Refiner` での拡大にアップスケーラを利用できるようにしました。
	- `2step` など書き換えを控えめにした際に、品質が上がります。
- 全体的にパラメータを調整しました。
- 動画の末尾で先頭とフェードする `RepeatFade` を追加しました。
	- 動画の先頭を数フレームを切り取って、末尾でクロスフェードします。

### 2025/08/10

- `Input/Load/` フォルダにある画像ファイルをランダム or 順番に使用して動画を生成する機能を追加しました。
	- 開始画像読み込み下の `LoadImageFrom` で切り替え。
	- `LoadImageFolderPath` で別パスのフォルダを指定することもできます。
	- `randomize | increment & Set 0` でランダムか順番かを設定
- `LoRA プリセット` の追加しました。昨日時点で LoRA の接続切れがありました。
	- プリセットを 5種に増やしました。
- `Refiner` の `ColorMatch` が動作しなくなった不具合を修正しました。
- 動画サイズの面積指定と長辺指定を選べるようにしました。

## ドキュメント

- [よくある質問と回答](https://github.com/Zuntan03/EasyWan22/wiki/%E3%82%88%E3%81%8F%E3%81%82%E3%82%8B%E8%B3%AA%E5%95%8F%E3%81%A8%E5%9B%9E%E7%AD%94)
- [更新履歴](https://github.com/Zuntan03/EasyWan22/wiki/%E6%9B%B4%E6%96%B0%E5%B1%A5%E6%AD%B4)

## ライセンス

このリポジトリの内容は [MIT License](./LICENSE.txt) です。  
別途ライセンスファイルがあるフォルダ以下は、そのライセンスです。
