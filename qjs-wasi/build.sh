#!/bin/bash

if [[ ! -d wasi-sdk-5.0 ]]; then
    curl -L -O https://github.com/CraneStation/wasi-sdk/releases/download/wasi-sdk-5/wasi-sdk-5.0-macos.tar.gz
    tar zxvf wasi-sdk-5.0-macos.tar.gz
fi

mkdir -p build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../wasi-sdk.cmake ..
cd ..
make -C build

