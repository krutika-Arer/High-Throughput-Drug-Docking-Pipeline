#!/bin/bash

mkdir -p minimized_sdf

for f in sdf/split_sdf_dbid/*.sdf; do
    base=$(basename "$f")

    obabel "$f" \
        -O "minimized_sdf/$base" \
        --minimize --ff MMFF94 --steps 500 \
    || \
    obabel "$f" \
        -O "minimized_sdf/$base" \
        --minimize --ff UFF --steps 500
done
