# Duktape

[Duktape](http://duktape.org/) is an **embeddable JavaScript** engine,
with a focus on **portability** and **compact** footprint.

**Original Source**: https://github.com/svaarala/duktape

**Modifications**: We made some changes to adapt the codebase to the [WASI interface](https://wapm.io/interface/wasi).

## Running

You can run `duktape` on your browser:
https://webassembly.sh/?run-command=duk

Or you can run it locally in your shell:

```bash
wapm install -g duktape
```

Without any arguments a simple REPL will be launched.

```bash
# Run a file
duk --dir=. examples/hello_world.js

# Run the REPL
duk
```

### With wasmtime

First build it by following the instructions in "Building".

```bash
# Run a file
wasmtime --dir examples/ build/duk.wasm -- examples/hello_world.js

# Run the REPL
wasmtime --dir . build/duk.wasm
```

## Building

The following script will install [`wasienv`](https://github.com/wasienv/wasienv) and build the Wasm binary.

```bash
./build.sh
```
