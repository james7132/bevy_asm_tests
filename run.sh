#!/bin/bash

cargo build --release --examples
for file in target/release/examples/*.s; do
  OUTPUT="results/$(basename ${file/-[a-f0-9]*.s/.s})";
  if test -f $OUTPUT; then
    rm $OUTPUT
  fi
  rustfilt -i $file -o $OUTPUT
  rm $file
done
for file in target/release/deps/*.s; do
  FILENAME=$(basename ${file/-[a-f0-9]*.s/.s})
  if [[ $FILENAME == bevy_ecs.s ]] then
    OUTPUT="results/$FILENAME";
    if test -f $OUTPUT; then
      rm $OUTPUT
    fi
    rustfilt -i $file -o $OUTPUT
    rm $file
  fi
done
