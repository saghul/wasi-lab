#!/bin/bash

# Install wasienv
curl https://raw.githubusercontent.com/wasienv/wasienv/master/install.sh | sh

mkdir -p build
cd build
wasimake cmake ..
cd ..
make -C build
