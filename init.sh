#!/bin/bash
# arg $1: python version (e.g., 3.10.6)
# arg $2: mount,lanuch option

if [ "$1" == "--" ]; then
   echo "Using default python version"
else
   source ./sh/environment/conda.sh $1
fi
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

# while getopts "a:" opt; do
#   case "$opt" in
#     a)
#       # WIP
#       if [ "$OPTARG" == "easywan22" ]; then
#          echo "$OPTARG is installing..."
#          # comfy node install 
#          # pip install sageattention
#          # comfy launch -- --normalvram
#          exit 0
#       else
#          echo "$OPTARG is unknown app"
#          exit 1
#       fi
#       ;;
#     \?)
#       echo "Usage: $0 -a <value>" >&2
#       exit 1
#       ;;
#   esac
# done