#!/bin/bash
# https://comfyui-wiki.com/ja/install/install-comfyui/install-comfyui-on-windows
# based on the above website

# Note: Excute this script with "source install.sh" to apply virtual environment to current shell

python -m venv venv
source ./venv/bin/activate
pip install comfy-cli
comfy --install-completion
comfy --here install