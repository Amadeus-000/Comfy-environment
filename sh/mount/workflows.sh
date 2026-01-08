#!/bin/bash

mkdir -p ./ComfyUI/user/default/workflows
ln -s $(pwd)/myworkflows $(pwd)/ComfyUI/user/default/workflows
ls -la ComfyUI/user/default/workflows/