# QuickJS

QuickJS is a small and embeddable JavaScript engine. It supports the ES2019 specification including modules, asynchronous generators and proxies.

It optionally supports mathematical extensions such as big integers (BigInt), big floating point numbers (BigFloat) and operator overloading.

**Original Source**: https://bellard.org/quickjs/quickjs-2019-09-18.tar.xz

**Modifications**: We made some changes to adapt the codebase to the [WASI interface](https://wapm.io/interface/wasi).

## Running

You can run `quickjs` on your browser:
https://webassembly.sh/?run-command=qjs

Or you can run it locally in your shell with:

```bash
wapm install -g quickjs
```

Without any arguments a simple REPL will be launched.

```bash
# Run a file
qjs --dir=. examples/hello_module.js

# Run the REPL
qjs
```

### With wasmtime

First build it by following the instructions in "Building".

```bash
# Run a file
wasmtime --dir examples/ build/qjs.wasm -- examples/hello_module.js

# Run the REPL
wasmtime --dir . build/qjs.wasm
```

## Building

The following script will install [`wasienv`](https://github.com/wasienv/wasienv) and build the Wasm binary.

```bash
./build.sh
```
