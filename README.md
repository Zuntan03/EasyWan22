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

## 最近の更新

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
