#!/bin/bash

source ./sh/environment/conda.sh $1
source ./sh/environment/install.sh
cp ./config.ini ./ComfyUI/custom_nodes/ComfyUI-Manager/config.ini
bash ./sh/environment/mount.sh
bash ./sh/environment/launch.sh