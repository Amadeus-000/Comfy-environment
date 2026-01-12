#!/bin/bash
# arg $1: python version (e.g., 3.10.6)

source ./sh/environment/conda.sh $1
source ./sh/environment/install.sh
cp ./config.ini ./ComfyUI/custom_nodes/ComfyUI-Manager/config.ini

if [ "$2" == "m" ]; then
   echo "Mounting all models..."
   bash ./sh/mount/all.sh
elif [ "$2" == "l" ]; then
   echo "Launching ComfyUI..."
   bash ./sh/environment/launch.sh
elif [ "$2" == "ml" ]; then
   echo "Mounting all models and launching ComfyUI..."
   bash ./sh/mount/all.sh
   bash ./sh/environment/launch.sh
fi