#!/bin/bash

if [[ ! -d wasi-sdk-7.0 ]]; then
    OS=$(uname | tr '[:upper:]' '[:lower:]')
    case "$OS" in
        darwin) WASI_URL='https://github.com/CraneStation/wasi-sdk/releases/download/wasi-sdk-7/wasi-sdk-7.0-macos.tar.gz';;
        linux) WASI_URL='https://github.com/CraneStation/wasi-sdk/releases/download/wasi-sdk-7/wasi-sdk-7.0-linux.tar.gz';;
        *) printf "$red> The OS (${OS}) is not supported by this installation script.$reset\n"; exit 1;;
    esac
    curl -L -o wasi-sdk-7.0.tar.gz ${WASI_URL}
    tar zxvf wasi-sdk-7.0.tar.gz
fi

mkdir -p build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../wasi-sdk.cmake ..
cd ..
make -C build
