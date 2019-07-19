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

### Using wasmtime

```bash
wasmtime --dir examples/ build/qjs.wasm -- --module examples/hello_module.js
```

### Using wasmer

```bash
wasmer run --dir=examples/ build/qjs.wasm -- examples/hello_world.js
```

### Using wapm (not available yet)

```bash
# Run qjs
wapm run qjs --dir=. --module examples/hello_module.js
```
