#!/bin/bash

cargo build --release
rm results/*.s
cp target/release/examples/*.s results
for file in results/*.s ; do
  mv "$file" "${file/-[a-f0-9]*.s/.s}";
done
