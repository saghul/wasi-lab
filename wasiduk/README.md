# Duktape

[Duktape](http://duktape.org/) is an **embeddable JavaScript** engine,
with a focus on **portability** and **compact** footprint.

**Original Source**: https://github.com/svaarala/duktape

**Modifications**: We made some changes to adapt the codebase to the [WASI interface](https://wapm.io/interface/wasi).

## Building

```bash
./build.sh
```

It will download the WASI SDK (the macOS version).

## Running

Without any arguments a simple REPL will be launched.

### Using wasmtime

```bash
# Run a file
wasmtime --dir examples/ build/duk.wasm -- examples/hello_world.js

# Run the REPL
wasmtime --dir . build/duk.wasm
```

### Using wasmer

```bash
# Run a file
wasmer run --dir=examples/ build/duk.wasm -- examples/hello_world.js

# Run the REPL
wasmer run --dir=. build/duk.wasm
```

### Using wapm (not available yet)

```bash
# Run a file
wapm run duk --dir=. examples/hello_world.js

# Run the REPL
wapm run duk
```
