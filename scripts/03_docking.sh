#!/bin/bash

mkdir -p results logs

for lig in pdbqt/*.pdbqt; do
    base=$(basename "$lig" .pdbqt)

    vina --receptor protein.pdbqt \
         --ligand "$lig" \
         --config config.txt \
         --out "results/${base}_out.pdbqt" \
         --log "logs/${base}.log"
done
