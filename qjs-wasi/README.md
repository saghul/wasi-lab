# QuickJS

QuickJS is a small and embeddable JavaScript engine. It supports the ES2019 specification including modules, asynchronous generators and proxies.

It optionally supports mathematical extensions such as big integers (BigInt), big floating point numbers (BigFloat) and operator overloading.

Install it with:

```bash
wapm install -g quickjs
```

**Original Source**: https://bellard.org/quickjs/quickjs-2019-07-09.tar.xz

**Modifications**: We made some changes to adapt the codebase to the [WASI interface](https://wapm.io/interface/wasi).

## Running

Without any arguments a simple REPL will be launched.

```bash
# Run a file
qjs --dir=. --module examples/hello_module.js

# Run the REPL
qjs
```

## Building

The following script will download the WASI SDK and build the Wasm binary.

```bash
./build.sh
```
