#!/bin/bash

# Script to download CivitAI models using curl
# Usage: ./Ccurl.sh [URL] [OUTPUT_FILE(optional)]
# Example:
#   ./Ccurl.sh "https://civitai.com/api/download/models/2167369?type=Model&format=SafeTensor&size=pruned&fp=fp16"

# ---- CONFIG ----
# Set your API key via environment variable instead of hardcoding it:
export CIVITAI_API_KEY="29a5a3b92c50c0923b7f2d8b2dc8bc35"
API_KEY="${CIVITAI_API_KEY}"
URL="${1}"

# ---- VALIDATION ----
if [ -z "$URL" ]; then
  echo "Error: URL parameter is required" >&2
  echo "Usage: $0 [URL] [OUTPUT_FILE(optional)]" >&2
  exit 1
fi

if [ -z "$API_KEY" ]; then
  echo "Error: CIVITAI_API_KEY is not set." >&2
  echo "Please run: export CIVITAI_API_KEY='your_api_key_here'" >&2
  exit 1
fi

# ---- DOWNLOAD ----
curl -L -OJ \
  -H "Authorization: Bearer $API_KEY" \
  "$URL"