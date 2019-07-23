# QuickJS

QuickJS is a small and embeddable JavaScript engine. It supports the ES2019 specification including modules, asynchronous generators and proxies.

It optionally supports mathematical extensions such as big integers (BigInt), big floating point numbers (BigFloat) and operator overloading.

**Original Source**: https://bellard.org/quickjs/quickjs-2019-07-09.tar.xz

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
wasmtime --dir examples/ build/qjs.wasm -- --module examples/hello_module.js

# Run the REPL
wasmtime --dir . build/qjs.wasm
```

### Using wasmer (not fully working yet)

```bash
# Run a file
wasmer run --dir=examples/ build/qjs.wasm -- --module examples/hello_world.js

# Run the REPL
wasmer run --dir=. build/qjs.wasm
```

### Using wapm (not available yet)

```bash
# Run a file
wapm run qjs --dir=. --module examples/hello_module.js

# Run the REPL
wapm run qjs
```
