#!/bin/bash

cargo build --release --examples
#rm results/*.s
cp target/release/examples/*.s results
for file in results/*.s ; do
  OUTPUT="${file/-[a-f0-9]*.s/.s}";
  rustfilt -i $file -o $OUTPUT
  rm $file
done
