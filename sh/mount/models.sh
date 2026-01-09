#!/bin/bash

for dirpath in /workspace/models/*/; do
   dirname=$(basename "$dirpath")
   echo "Mounting model directory: $dirname"
   rm -rf "/workspace/Comfy-environment/ComfyUI/models/$dirname"
   ln -s "/workspace/models/$dirname" "/workspace/Comfy-environment/ComfyUI/models/$dirname"
done