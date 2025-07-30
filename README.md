# <ruby>EasyWan22<rt>ｲｰｼﾞｰﾜﾝﾆｬﾝﾆｬﾝ</rt></ruby>

諸々整備中。週末ぐらいにはまともになるはず。

RAM 32GB, VRAM 8GB で動きます。  
Geforce RTX 3060 12GB で長辺 1024 px, 101フレームが生成できました。

[ワークフロー付きサンプル動画](https://yyy.wpx.jp/2025/07/20250731-EasyWan22.mp4)

## インストール方法

1. [EasyWan22Installer.bat](https://github.com/Zuntan03/EasyWan22/raw/main/EasyWan22/EasyWan22Installer.bat?ver=0) を右クリックから保存します。
2. インストール先の **空フォルダ** を `C:/EasyWan22/` や `D:/EasyWan22/` などの浅いパスに用意して、`EasyWan22Installer.bat` を置いて実行します。
	- **`WindowsによってPCが保護されました` と表示されたら、`詳細表示` から `実行` します。**
	- **`Microsoft Visual C++ 2015-2022 Redistributable` のインストールで `このアプリがデバイスに変更を加えることを許可しますか？` と表示されたら `はい` とします。**

## 使い方

- `ComfyUi.bat` で起動します。
	- 初回起動時にブラウザキャッシュにある過去のワークフローが開かれ、エラーになる場合があります。エラーを無視してワークフローを閉じてください。
- `Update.bat` で更新します。

`Easy/99_WIP_Kijai_LowSpec.json` 上にある緑のノードを操作します。

まずはプロンプトで遊んでみてください。  
[プロンプトジェネレータ](https://dengeai.com/prompt-generator) と [プロンプトのしくみ](https://www.instasd.com/post/wan2-2-whats-new-and-how-to-write-killer-prompts) で遊べそうです。

## ライセンス

このリポジトリの内容は [MIT License](./LICENSE.txt) です。  
別途ライセンスファイルがあるフォルダ以下は、そのライセンスです。
