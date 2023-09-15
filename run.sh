#!/bin/bash

cargo build --release --examples
#rm results/*.s
for file in target/release/examples/*.s; do
  OUTPUT="results/$(basename ${file/-[a-f0-9]*.s/.s})";
  rustfilt -i $file -o $OUTPUT
  rm $file
done
