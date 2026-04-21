#!/bin/bash

mkdir -p pdbqt

for f in minimized_sdf/*.sdf; do
    base=$(basename "$f" .sdf)

    obabel "$f" \
        -O "pdbqt/${base}.pdbqt" \
        -xh --partialcharge gasteiger
done
