# Comfy-enviroment

## コマンド集
### VRAM使用量、GPU利用率の監視
```bash
watch -n 1 nvidia-smi
```

### EasyWan22
なぜかこのライブラリが入らない
`pip install sageattention`

- ComfyUI_essentials
- ComfyUI-WanVideoWrapper
はComfyUI-Managerで入れるとエラーが出るから、手動で入れ直す。


## GoogleDriveのマウントパス
### Wan22
`/vastai/workflow_assets/wan22/models` to `/workspace/models`
### EaysWan22
`/vastai/workflow_assets/easy_wan22/models` to `/workspace/models`
