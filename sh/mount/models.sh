#!/bin/bash

rm -rf /workspace/Comfy-environment/ComfyUI/models/diffusion_models
ln -s /workspace/models/diffusion_models /workspace/Comfy-environment/ComfyUI/models/diffusion_models

rm -rf /workspace/Comfy-environment/ComfyUI/models/loras
ln -s /workspace/models/loras /workspace/Comfy-environment/ComfyUI/models/loras

rm -rf /workspace/Comfy-environment/ComfyUI/models/text_encoders
ln -s /workspace/models/text_encoders /workspace/Comfy-environment/ComfyUI/models/text_encoders

rm -rf /workspace/Comfy-environment/ComfyUI/models/vae
ln -s /workspace/models/vae /workspace/Comfy-environment/ComfyUI/models/vae