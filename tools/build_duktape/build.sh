#!/bin/bash

# Prepare output directory
mkdir -p out
rm -f out/*

# Build Duktape
pushd duktape
python2 tools/configure.py \
    --output-directory ../out \
    --option-file ../config.yaml
popd
