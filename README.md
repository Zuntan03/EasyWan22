<!-- README.md を英訳して README_en.md を更新します。このコメントは残してください。更新履歴をよく更新します。 -->
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

- 『[Wan2.2が簡単に使える「EasyWan22」の使い方](https://note.com/aiaicreate/n/n0c24cf1a8035)』

作例

- 8/4: [@studiomasakaki](https://x.com/studiomasakaki/status/1952222138762768553)
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

## 最近の更新

現在、ドキュメントの更新が追いついていません。

### 2025/08/11

- 高速化のために、高速化 LoRA ベイク済みの GGUF を利用するように変更しました。
	- `Download/diffusion_models/FastMix/*.bat` で、より高精度なモデルをダウンロードできます。
- `Refiner` での拡大にアップスケーラを利用できるようにしました。
	- `2step` など書き換えを控えめにした際に、品質が上がります。

### 2025/08/10

- `Input/Load/` フォルダにある画像ファイルをランダム or 順番に使用して動画を生成する機能を追加しました。
	- 開始画像読み込み下の `LoadImageFrom` で切り替え。
	- `LoadImageFolderPath` で別パスのフォルダを指定することもできます。
	- `randomize | increment & Set 0` でランダムか順番かを設定
- `LoRA プリセット` の追加しました。昨日時点で LoRA の接続切れがありました。
	- プリセットを 5種に増やしました。
- `Refiner` の `ColorMatch` が動作しなくなった不具合を修正しました。
- 動画サイズの面積指定と長辺指定を選べるようにしました。

### 2025/08/09

- I2V ワークフローを刷新中です、がドキュメントの更新が追いついていません。
	- 動画の大きさを面積ベースの正方形の辺で指定するようにしました。
	- `Color Match` に対応しました。ポストプロセス最初の `Trim` 直後と、`Refiner` での拡大後に利用できます。
	- `Color Correct` に対応しました。
	- `LoRA プリセット` で I2V-A14B 用の LoRA を簡単に利用できるようにしています。
- 古いワークフローを `Easy/Deprecated/` に移動しました。

### 2025/08/09

- 『[AI ツールの大きなモデルによる SSD 寿命への影響](#ai-ツールの大きなモデルによる-ssd-寿命への影響)』を記載しました。

### 2025/08/08

- `Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1` に対応したワークフロー `00_I2V_Experimental-Wan22Lightning` を一時的に追加しました。
	- 動作確認の時間をあまり取れていませんので、取り急ぎの Experimental です。
- 以下のファイルのダウンロードに対応しました。
	- `Download\loras\Fast\Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1-H.bat`
	- `Download\loras\Fast\Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1-L.bat`
- `PyYAML` を明示的にインストールするようにしました。
	- Python 3.12 環境でのインストールの問題が解決しているかもしれません。
- `SaveLastImage` で最終フレーム画像でなく、開始フレーム画像が保存されていた不具合を修正しました。

GitHub リポジトリの Watch 設定を忘れていたため、Issue の登録に気がついておりませんでした。  
申し訳ありません。

### 2025/08/07

- `Easy/I2V` ワークフローを引き続き更新しています。
	- 緑色のノードが増えてきましたので、特によく触るノードを赤色にしました。
	- 動画の先頭や末尾から指定フレーム数を削除する `Trim` を `PostProcess` に追加しました。
	- `PointMosaic` を `Refiner` 適用前の動画で指定するようにしました。
		- `Refiner` 後の点の位置再指定が不要になります。
	- 機能の有効無効を単一トグルで切り替えるようにしました。
	- 動画の保存ファイル名を用途に合わせました。
	- `Refiner` の Full Block swap をオプション機能にしました。
		- LowNoise の VRAM 消費が若干増えていた問題が解消されます。
	- 実験的で一時的な機能として、開始画像の無効化に対応しました。

### 2025/08/06

- `Easy/I2V` ワークフローで `Refiner` に対応しました。
	- 生成した動画を拡大し、元の動画生成を引き継いだ LowNoise V2V で整えます。
	- `Sample/` に `Refiner` の実例サンプルを追加しました。
		- 長辺 `640px` 生成でガチャって、`960px` にリファインして、アプスケ 2倍で FullHD+ です。
		- `Refiner` は VRAM 消費が減るわけではありません。  
		解像度を落として高速にガチャを回せるようになるのが特徴です。
- `Download\loras\Nsfw\GeneralNsfw22_v008a-L.bat` のダウンロードに対応しました。
- ComfyUI と WanVideoWrapper のバージョンを更新しました。

### 2025/08/04

- `Easy/I2V` ワークフローを引き続き更新しています。
	- `ExtendPrompt` のプロンプト拡張とは別に、ローカルの Qwen でプロンプトを書き直す `Rewrite Prompt` に対応しました。
- `WanVideoWrapper` の更新で、メモリ不足の問題が解消している可能性があります。

### 2025/08/03

- `Easy/I2V` ワークフローを引き続き更新しています。
	- **日本語プロンプトの英訳に対応しました。**  
	**ローカル翻訳と Google Translator を選べます。**
	- テキストエンコーダを `Kijai`, `Native`, `NAG` から選べるようにしました。  
	デフォルトは scaled な fp8 の `Native` です。
	- ネガティブプロンプトでプリセットプロンプトや入力プロンプトを、連結して利用できるようにしました。
	- 画像からのプロンプト生成に対応しました。
		- 動きを落ち着ける効果が Wan 2.1 より強力で、使い道が限られそうです。
	- **`WanVideoPromptExtender` のローカルで動作する Qwen によるプロンプト拡張に対応しました。**
	- 複数種類のポジティププロンプトの選択的な組み合わせに対応しました。
	- 動画の長さを秒数で設定するように変更しました。
	- フレーム補間を `60FPS`, `60FPS 1.3倍速`, `30FPS` から選ぶようにしました。

### 2025/08/02

- `Easy/00_I2V(ImageToVideo)` ワークフローを追加しました。
	- EasyWanVideo の NsfwFast と同様のモザイク三種盛り、アップスケール、フレーム補間、ラベルに対応し、シードガチャ当たりからの後処理で再生成を不要にしました。
- 更新やインストールに Civitai の API キーが必要になります。
- `Download\loras\Nsfw\GeneralNsfw22_v006.bat` のダウンロードに対応しました。
	- `Download\loras\Nsfw\GeneralNsfw22_v008a.bat` にバージョンアップしました。
- 利用者の声を記載しました。
- `Sample/` への作例のダウンロードに対応しました。
- 無保証の Python 3.10 対応を試験的に導入。
- 安全策の `numpy==1.26.4` と `opencv-python==4.11.0.86` へのバージョン固定を復活させました。
- `Easy/00_I2V(ImageToVideo)` ワークフローに `99_WIP_Kijai_LowSpec` にもあった `EndImage` 機能を追加しました。

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyWan22/log/202508/I2V.webp)

### 2025/07/31

- `99_WIP_Kijai_LowSpec` ワークフローで LoRA の読み込みと、旧タイプ？の終了画像に対応しました。
	- 20:45 終了画像が正常に動作しない不具合を修正しました。
- `Download\vae_approx\taew2_1.bat` のダウンロードに対応しました。
	- [ComfyUI-Manager と Video Helper の設定](https://github.com/kijai/ComfyUI-WanVideoWrapper/issues/229#issuecomment-2729456556) で `WanVideoSampler` にプレビューが表示されます。
- `Wan2.2-I2V-A14B` の `Q4_K_M`, `Q6_K`, `Q8_0` のダウンロードに対応しました。
	- `Download\diffusion_models\Base-Wan2.2-I2V-A14B.bat` でまとめてダウンロードできます。
- [プロンプトでダンス（旧 WIP ワークフロー）](https://yyy.wpx.jp/2025/07/20250731-EasyWan22.mp4)
	- アップスケールとフレーム補間を無効にすると高速に生成できます。
- `Easy/99_WIP_Kijai_LowSpec.json` 上にある緑のノードを操作します。

`ComfyUI/extra_model_paths.yaml.example` をコピーしてから `ComfyUI/extra_model_paths.yaml` にリネームし、
```yaml
comfyui:
    base_path: D:/EasyWanVideo/ComfyUI/
    loras: models/loras/
```
といった内容に書き換えると、EasyWanVideo の Wan 2.1 LoRA を参照できます。  
`D:/EasyWanVideo/ComfyUI/` の部分を EasyWanVideo インストール先の `EasyWanVideo/ComfyUI/` への絶対パスに書き換えてください。

## ライセンス

このリポジトリの内容は [MIT License](./LICENSE.txt) です。  
別途ライセンスファイルがあるフォルダ以下は、そのライセンスです。
