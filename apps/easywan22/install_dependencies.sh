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
    "rgthree-comfy"
    "comfyui-kjnodes"
    "comfyui-florence2"
    "comfyui-videohelpersuite"
    "comfyui_custom_nodes_alekpet"
    "comfyui-frame-interpolation"
    "comfyui-mxtoolkit"
    "comfyui-unload-model"
    "loop-image"
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
