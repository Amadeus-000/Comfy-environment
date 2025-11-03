#!/bin/bash
# https://comfyui-wiki.com/ja/install/install-comfyui/install-comfyui-on-windows
# based on the above website

python -m venv venv
source ./venv/Scripts/activate
pip install comfy-cli
comfy --install-completion
comfy --here install