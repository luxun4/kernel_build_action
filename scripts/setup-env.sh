#!/bin/bash
set -e

CLANG_DIR="$PWD/clang"

if [[ "${{ inputs.aosp-clang }}" == "true" ]]; then
  echo "Downloading AOSP clang"
  mkdir -p "$CLANG_DIR"
  cd "$CLANG_DIR"

  aria2c -x 16 https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android13-release/clang-r450784d.tar.gz -o aosp-clang.tar.gz
  tar -xf aosp-clang.tar.gz
  echo "AOSP clang downloaded and extracted"
fi