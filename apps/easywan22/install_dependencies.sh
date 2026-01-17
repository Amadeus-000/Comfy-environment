#!/bin/bash

# Custom Nodes Installation Script for ComfyUI
# This script installs required custom nodes using comfy node install command

set -e  # Exit on error

echo "==================================="
echo "Installing ComfyUI Custom Nodes"
echo "==================================="

# List of custom nodes to install
custom_nodes=(
    "comfyui-impact-pack"
    "comfyui-custom-scripts"
    "rgthree-comfy" # version = "1.0.2509092031"
    "comfyui-kjnodes"
    "comfyui-florence2"
    "comfyui-videohelpersuite"
    "comfyui_custom_nodes_alekpet"
    "comfyui-frame-interpolation"
    "comfyui-mxtoolkit"
    "comfyui-unload-model"
    "loop-image",
    "comfyui_essentials", # version = "1.1.0"
    "ComfyUI-WanVideoWrapper" # version = "1.3.4"
)

# Install each custom node
for node in "${custom_nodes[@]}"; do
    echo ""
    echo "-----------------------------------"
    echo "Installing: $node"
    echo "-----------------------------------"
    comfy node install "$node" || echo "Warning: Failed to install $node"
done

echo ""
echo "==================================="
echo "Custom Nodes Installation Complete"
echo "==================================="
