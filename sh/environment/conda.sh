#!/bin/bash

if [ -z "$1" ] || [ "$1" == "..." ]; then
    echo "Using default python version"
else
    echo "Using python $1"
    conda create -n python python="$1"
    conda activate python
fi