# Duktape

[Duktape](http://duktape.org/) is an **embeddable JavaScript** engine,
with a focus on **portability** and **compact** footprint.

Install it with:

```bash
wapm install -g duktape
```

**Original Source**: https://github.com/svaarala/duktape

**Modifications**: We made some changes to adapt the codebase to the [WASI interface](https://wapm.io/interface/wasi).

## Running

Without any arguments a simple REPL will be launched.

```bash
# Run a file
duk --dir=. examples/hello_world.js

# Run the REPL
duk
```


## Building

The following script will download the WASI SDK and build the Wasm binary.

```bash
./build.sh
```
