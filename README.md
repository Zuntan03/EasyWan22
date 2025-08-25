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

最新の利用者の声はこちら [Twitter](https://x.com/search?q=%22easywan22%22&src=typed_query&f=live), [YouTube](https://www.youtube.com/results?search_query=EasyWan22), [Google](https://www.google.com/search?q=easywan22)

記事

- 8/11:『[無料の動画生成AI「Wan2.2」が凄すぎる　PCローカルでこの品質が出せるとは](https://ascii.jp/elem/000/004/312/4312173/)』
	- [p. 5「導入にあたっては、Zuntanさんの「EasyWan22」の環境が迷わず設定できておすすめです。」](https://ascii.jp/elem/000/004/312/4312173/5/)
- 8/5:『[ローカル環境でWan2.2のimg2videoを試してみた](https://kagaseo.blog.jp/archives/29271567.html)』
- 7/31:『[Wan2.2が簡単に使える「EasyWan22」の使い方](https://note.com/aiaicreate/n/n0c24cf1a8035)』

作例

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

<!--
README.md を英訳して README_en.md を更新します。更新履歴をよく更新します。EasyWan22/wiki/ へのリンクは変更禁止。「ドキュメント」内は変更禁止。
-->

現在、ドキュメントの更新が追いついていません。

### 2025/08/25

- Base モデルのデフォルト設定を旧 Kijai WIP 仕様に合わせました。
	- `BaseSampler` の `HiNoise1stEnabled` で 3段サンプラを無効化しています。
- 動きを強化する `Boost1stStep` を追加しました。
	- FastMix で最初のステップで高速化 LoRA をマイナス適用で無効化することで、Cfg 3.5 での動きが良くなりました。  
	![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyWan22/log/202508/FirstStepCfgHack.webp) 
- `上半身脱衣(L|S)` のプリセットを追加しました。
- 試してみたノードのピン留めが何かと面倒なのでやめました。
- ComfyUI のバージョンを `v0.3.52` に上げました。
- 動きを強化する `Boost1stStep` のサンプルを追加しました。
	- `Boost1stStep` の有効無効の変更のみで、大きく動きが変わります。
		- A-Boost1stStep [あり](https://yyy.wpx.jp/EW22/S/20250825-Boost1stStepA0_ON.mp4), [なし](https://yyy.wpx.jp/EW22/S/20250825-Boost1stStepA1_OFF.mp4)
		- B-Boost1stStep [あり](https://yyy.wpx.jp/EW22/S/20250825-Boost1stStepB0_ON.mp4), [なし](https://yyy.wpx.jp/EW22/S/20250825-Boost1stStepB1_OFF.mp4)

### 2025/08/24

- サブグラフに対応し、ワークフローの見た目が優しくなりました。
	- 機能面ではベースモデルへの切り替えを追加しています。
	- Wiki に UI リファレンスを用意し、各項目からリンクしました。

New  
![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyWan22/log/202508/NewWorkflow.webp)  

Old  
![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyWan22/log/202508/OldWorkflow.webp)


### 2025/08/22

- `ColorMatch` のモデルを意図せず変更していたのを修正。

### 2025/08/21

- ComfyUI のバージョンを `v0.3.51` に上げました。
- `city96/ComfyUI-GGUF` のバージョンを 8/20 版に更新しました。
- `SaveEndFrame` で開始画像が保存されてしまう問題に仮対処しました。
	- `Enable SaveEndFrame` の切り替えで状態が不正になります。
- プリセットに `積極騎乗位`, `主観騎乗位`, `口にちんこ` を追加しました。

### 2025/08/20

- 終了画像からの過去の動画生成と、開始画像と終了画像からの動画生成に対応しました。
	- `SwapStartEnd` で開始画像を終了画像として扱い、画像に至る過去の動画を生成します。
	- `UseEndImage` で終了画像を追加で指定し、開始画像から終了画像への動画を生成します。
		- 力技なのでリソース消費多め。
	- VACE ではありませんので動きの繋がりは運次第です。
	- 1枚の画像から 15秒のループ動画を生成する `LoopFLF2V` サンプルを追加しました。

`LoopFLF2V` サンプルの生成手順

1. `SwapStartEnd` を有効にして、終了画像から 5秒の過去動画を生成する。
2. `SwapStartEnd` を無効にして、開始画像から 5秒の動画を生成する。  
	`AppendVideo` を有効にして `1.` の `Asset.webp` を `PreviousWebpVideo` に設定すると、動きの繋がりを確認できます。
	- この時点で簡単な 10秒動画生成になります。
	- `AppendVideo` はポストプロセスのひとつですので、`Enable PostProcess` が有効である必要があります。
		- `Refiner` や `Upscale` などの設定は、結合する動画間で合わせてください。
		- 次回の更新で `AppendVideo` の結合タイミングを調整できるようにする見込みです。
3. `UseEndImage` を有効にして、開始画像に `2.` の `EndFrame.wabp` 終了画像に `1.` の  `EndFrame.wabp` を設定して 5秒の動画を生成する。  
	`AppendVideo` を有効にして `2.` の `Asset.webp` を `PreviousWebpVideo` に設定します。  
	`1.` > `2.` > `3.` > `1.` とループする動画になります。

### 2025/08/18

- `CumshotAesthetics` プリセットをプロンプトで補助したサンプルを追加しました。
	- 日本語での指示を自動的に日英中の3ヶ国語プロンプトにしています。

### 2025/08/17

- `Enable PostProcess` でポストプロセス全体の有効無効を切り替えられるようにしました。
- `Enable MosaicWork` でポストプロセス全体が無効でも、モザイクの編集をできるようにしました。  
以下は最速でモザイクを編集するための手順例です。
	1. `Enable PostProcess` を無効にする。
	2. `PostProcessSource` の `LoadWebpVideo` で生成済み Webp 動画を読み込む。
	3. `Enable MosaicWork` を有効にする。
	4. `Output` の `SaveMp4` などのファイル保存を無効にする。
	5. `Enable PointMosaic`, `Enable MaskMosaic`, `Enable AutoMosaic` を有効にしてモザイクを編集する。
	6. モザイクの編集が終わったら、`Enable PostProcess` とファイル保存を有効にして実行すると、ポストプロセス込みのモザイク済み動画を生成。
- `AppendVideo` で生成済み Webp 動画に、生成した動画を付け足せるようにしました。
	- `TrimEndFrames` で前の生成済み Webp 動画の末尾フレームを削除できます。
		- 生成した動画の先頭フレームを削除したい場合は `TrimStartFrames` で。
- `CumshotAesthetics` のプリセットとサンプルを追加しました。

### 2025/08/16

- [Wan22-FastMix](https://huggingface.co/Zuntan/Wan22-FastMix) を公開し、これに合わせてワークフローを調整しました。
	- ゴーストの軽減や動きの強化を実現しています。
	- 利用 LoRA との相性がありますが、`EnhanceMotion` で動きの大きさや速さを増減できます。
- コンパイルが通らない・遅くなる環境があるようなので、PyTorch のバージョンを `2.7.1` に巻き戻しました。

### 2025/08/14

- ComfyUI のバージョンを `v0.3.50` に更新しました。
- PyTorch のバージョンを `2.8.0` に、CUDA バージョンを `12.8` に上げました。
- GeneralNsfw プリセットが様々な画像に利用できるサンプルを追加しました。

### 2025/08/13

- 汎用 NSFW LoRA の汎用っぷりと `I2V` ワークフローの量産性を確認するサンプルを追加しました。
	- 過去のお気に入り画像をフォルダ指定で読み込んで、プリセットをそのままで生成してるだけです。
- Sigmas を無効化できるようにする `Use Sigmas` を追加しました。
- NSFW プリセットを追加しました。
	- `Download\loras\Nsfw\Footjob_v10-(H|L).bat`

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

- [チュートリアル](https://github.com/Zuntan03/EasyWan22/wiki/%E3%83%81%E3%83%A5%E3%83%BC%E3%83%88%E3%83%AA%E3%82%A2%E3%83%AB)
<!-- - [よくある質問と回答](https://github.com/Zuntan03/EasyWan22/wiki/%E3%82%88%E3%81%8F%E3%81%82%E3%82%8B%E8%B3%AA%E5%95%8F%E3%81%A8%E5%9B%9E%E7%AD%94) -->
- [更新履歴](https://github.com/Zuntan03/EasyWan22/wiki/%E6%9B%B4%E6%96%B0%E5%B1%A5%E6%AD%B4)
- UI 説明
	- [画像入力](https://github.com/Zuntan03/EasyWan22/wiki/UI-%E7%94%BB%E5%83%8F%E5%85%A5%E5%8A%9B)
	- [動画出力](https://github.com/Zuntan03/EasyWan22/wiki/UI-%E5%8B%95%E7%94%BB%E5%87%BA%E5%8A%9B)
	- [保存](https://github.com/Zuntan03/EasyWan22/wiki/UI-%E4%BF%9D%E5%AD%98)
	- [プロンプト](https://github.com/Zuntan03/EasyWan22/wiki/UI-%E3%83%97%E3%83%AD%E3%83%B3%E3%83%97%E3%83%88)
	- [プリセット](https://github.com/Zuntan03/EasyWan22/wiki/UI-%E3%83%97%E3%83%AA%E3%82%BB%E3%83%83%E3%83%88)
	- [モデル](https://github.com/Zuntan03/EasyWan22/wiki/UI-%E3%83%A2%E3%83%87%E3%83%AB)
	- [後処理](https://github.com/Zuntan03/EasyWan22/wiki/UI-%E5%BE%8C%E5%87%A6%E7%90%86)
	- [モザイク](https://github.com/Zuntan03/EasyWan22/wiki/UI-%E3%83%A2%E3%82%B6%E3%82%A4%E3%82%AF)

## ライセンス

このリポジトリの内容は [MIT License](./LICENSE.txt) です。  
別途ライセンスファイルがあるフォルダ以下は、そのライセンスです。
