# QuickJS

QuickJS is a small and embeddable Javascript engine. It supports the ES2019 specification including modules, asynchronous generators and proxies.

It optionally supports mathematical extensions such as big integers (BigInt), big floating point numbers (BigFloat) and operator overloading.


**Original Source**: https://bellard.org/quickjs/quickjs-2019-07-09.tar.xz

**Modification**: We made some changes to adapt the codebase to the [WASI interface](https://wapm.io/interface/wasi).


## Running

```bash
# Run qjs
wapm run qjs --dir=. --module examples/hello_module.js
```

## Building

```bash
./build.sh
```

It will download the WASI SDK (the macOS version).
