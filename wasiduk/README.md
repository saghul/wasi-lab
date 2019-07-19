# Duktape

[Duktape](http://duktape.org/) is an **embeddable Javascript** engine,
with a focus on **portability** and **compact** footprint.

**Original Source**: https://github.com/svaarala/duktape

**Modification**: We made some changes to adapt the codebase to the [WASI interface](https://wapm.io/interface/wasi).

## Running

```bash
# Run a file
wapm run duk --dir=. examples/hello_world.js

# Run the duk shell
wapm run duk
```

## Building

```bash
./build.sh
```

It will download the WASI SDK (the macOS version).
