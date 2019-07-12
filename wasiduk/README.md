# Duktape on WASI

## Building

```
./build.sh
```

It will download the WASI SDK (the macOS version).

## Running

You need to have [wasmtime](https://github.com/CraneStation/wasmtime) or [wasmer](https://wasmer.io/) installed.

```
wasmtime --dir examples/ build/duk.wasm -- examples/hello_world.js
```

```
wasmer run --dir=examples/ build/duk.wasm -- examples/hello_world.js
```
