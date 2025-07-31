# <ruby>EasyWan22<rt>ｲｰｼﾞｰﾜﾝﾆｬﾝﾆｬﾝ</rt></ruby>

諸々整備中。週末ぐらいにはまともになるはず。

RAM 32GB, VRAM 8GB で動きます。  
Geforce RTX 3060 12GB で長辺 1024 px, 101フレームが生成できました。

ComfyUI の学習などが目的の方は、[SimpleComfyUi](https://github.com/Zuntan03/SimpleComfyUi) をご利用ください。

## ワークフロー付き仮サンプル動画

アップスケールとフレーム補間を無効にすると高速に生成できます。

- 2025/07/31 LoRA でダンス（WIP ワークフロー）
- 2025/07/31 [プロンプトでダンス（旧 WIP ワークフロー）](https://yyy.wpx.jp/2025/07/20250731-EasyWan22.mp4)

## インストール方法

1. [EasyWan22Installer.bat](https://github.com/Zuntan03/EasyWan22/raw/main/EasyWan22/EasyWan22Installer.bat?ver=0) を右クリックから保存します。
2. インストール先の **空フォルダ** を `C:/EasyWan22/` や `D:/EasyWan22/` などの浅いパスに用意して、`EasyWan22Installer.bat` を置いて実行します。
	- **`発行元を確認できませんでした。このソフトウェアを実行しますか？` と表示されたら `実行` します。**
	- **`WindowsによってPCが保護されました` と表示されたら、`詳細表示` から `実行` します。**
	- **`Microsoft Visual C++ 2015-2022 Redistributable` のインストールで `このアプリがデバイスに変更を加えることを許可しますか？` と表示されたら `はい` とします。**

## 使い方

- `ComfyUi.bat` で起動します。
	- 初回起動時にブラウザキャッシュにある過去のワークフローが開かれ、エラーになる場合があります。エラーを無視してワークフローを閉じてください。
- `Update.bat` で更新します。

`Easy/99_WIP_Kijai_LowSpec.json` 上にある緑のノードを操作します。

`ComfyUI/extra_model_paths.yaml.example` をコピーしてから `ComfyUI/extra_model_paths.yaml` にリネームし、
```yaml
comfyui:
    base_path: D:/EasyWanVideo/ComfyUI/
    loras: models/loras/
```
といった内容に書き換えると、EasyWanVideo の Wan 2.1 LoRA を参照できます。  
`D:/EasyWanVideo/ComfyUI/` の部分を EasyWanVideo インストール先の `EasyWanVideo/ComfyUI/` への絶対パスに書き換えてください。

## 最近の更新

### 2025/07/31

- `99_WIP_Kijai_LowSpec` ワークフローで LoRA の読み込みと、旧タイプ？の終了画像に対応しました。
- `Download\vae_approx\taew2_1.bat` のダウンロードに対応しました。
	- [ComfyUI-Manager と Video Helper の設定](https://github.com/kijai/ComfyUI-WanVideoWrapper/issues/229#issuecomment-2729456556) で `WanVideoSampler` にプレビューが表示されます。

## ライセンス

このリポジトリの内容は [MIT License](./LICENSE.txt) です。  
別途ライセンスファイルがあるフォルダ以下は、そのライセンスです。
