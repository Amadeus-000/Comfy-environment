#!/bin/bash

mkdir -p ./ComfyUI/user/default/workflows/myworkflows
ln -s $(pwd)/myworkflows $(pwd)/ComfyUI/user/default/workflows/myworkflows
ls -la ComfyUI/user/default/workflows/