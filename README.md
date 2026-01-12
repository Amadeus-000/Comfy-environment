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
### Wan22
`/vastai/workflow_assets/wan22/models` to `/workspace/models`
### EaysWan22
`/vastai/workflow_assets/easy_wan22/models` to `/workspace/models`


## EasyWan22
なぜかこのライブラリが入らない
`pip install sageattention`

- ComfyUI_essentials
- ComfyUI-WanVideoWrapper
はComfyUI-Managerで入れるとエラーが出るから、手動で入れ直す。
