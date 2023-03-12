# Bevy Assembly Tests

This is a collection of compilation tests to check the assembly output of common
ECS operations in Bevy.

This repo will be updated with every release of Bevy, and may track any major
changes Bevy ECS on main.

Currently, the tests are only built in release mode, with LTO enabled, for
`x86_64-unknown-linux-gnu` using the latest stable Rust toolchain and standard library
(currently 1.68). Please file an issue asking if you would like to test against other
platforms or toolchains.

The source code for each example case can be found in the `examples/` directory, and
final output for each case can be found in `results/`.

## Building Locally
The output can be built locally with the following command:

```bash
cargo rustc --release --examples
```

The assembly output will be automatically written to the `target/release/examples`
directory and hae a `*.s` file extension. The example name may be suffixed with
a source hash.

## License
MIT / Apache 2.0
