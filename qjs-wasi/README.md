# QuickJS on WASI

## Building

```
./build.sh
```

It will download the WASI SDK (the macOS version).

## Running

You need to have [wasmtime](https://github.com/CraneStation/wasmtime) installed.

```
wasmtime --dir examples/ build/qjs.wasm -- --module examples/hello_module.js
```
