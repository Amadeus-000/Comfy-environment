# Comfy-enviroment

## コマンド集
### VRAM使用量、GPU利用率の監視
`watch -n 1 nvidia-smi`

### custom_nodeのインストール
- comfy-cliで入れる場合

`comfy node install <NODE_NAME>`
- 手動で入れる場合
```bash
cd /path/to/ComfyUI/custom_nodes
git clone https://github.com/<author>/<repo>.git
cd /path/to/ComfyUI/custom_nodes/<repo>
pip install -r requirements.txt
```

## GoogleDriveのマウントパス
- Wan22
`/vastai/workflow_assets/wan22/models` to `/workspace/models`
- EasyWan22
`/vastai/workflow_assets/easy_wan22/models` to `/workspace/models`
- qwen_multiangle
`/vastai/workflow_assets/qwen_multiangle/models` to `/workspace/models`

## Comfy起動オプション
`comfy launch -- --option`
### ComfyUI モデル管理オプション
#### **--gpu-only**
- モデルはすべて常に VRAM に読み込まれます。
- VRAM に余裕がある場合に有効です。

#### **--highvram**
- モデルを VRAM に優先的に読み込みます。

#### **--normalvram** (デフォルト動作)
- 必要に応じてモデルを VRAM に読み込み、解放します。
- VRAM の状況に応じて、一部のモデルを VRAM に読み込み、一部を解放する機能が使用されます。
- 特に問題がなければ、カスタムノードが提供する `distorch` や `block swap` 等の機能を使わず、ComfyUI 標準のモデル管理機能でワークフローを実行するのが推奨されます。

#### **--lowvram**
- `--normalvram` とほぼ同じ動作ですが、以下の違いがあります：
  - テキストエンコーダを常にメインメモリにロードします。
  - テキストエンコーダでのプロンプト処理が GPU ではなく CPU で行われます。

#### **--novram**
- モデルは常にメインメモリに読み込まれます。

#### **--cpu**
- モデルは常に CPU を使用します。

#### **--disable-smart-memory**
- モデルを使った処理を行った後、すぐにモデルを解放します。
- VRAM が不足気味の場合に向いています。

#### **--reserve-vram RESERVE_VRAM**
- 指定した分の VRAM を予約し、それ以上は使用しません。
- 未指定の場合、デフォルトで 0.8 GB を残します。
- 指定した場合、`0.8 + RESERVE_VRAM` GB を残します。

#### **--disable-pinned-memory**
- PINNED MEMORY を使用しないようにします。
  - PINNED MEMORY は、ページアウトされず高速に CPU-GPU 間でやり取りできるメモリ領域です。
  - 標準では、Windows は最大メインメモリの 45%、他のプラットフォームでは 95% を PINNED MEMORY に使用します。
- このオプションを指定すると、ComfyUI の処理速度は低下しますが、システム全体の安定性が向上する場合があります（特に Windows 以外のプラットフォームで他のアプリケーションが同時に動作している場合）。
<!-- https://qiita.com/asfdrwe/items/2cd39b203bc1af05fed6 より引用 -->

## EasyWan22
なぜかこのライブラリが入らない
`pip install sageattention`

- ComfyUI_essentials
- ComfyUI-WanVideoWrapper
はComfyUI-Managerで入れるとエラーが出るから、手動で入れ直す。
