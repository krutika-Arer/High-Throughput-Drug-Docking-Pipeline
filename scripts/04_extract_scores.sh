#!/bin/bash

echo "Ligand,Score" > docking_scores.csv

for log in logs/*.log; do
    ligand=$(basename "$log" .log)
    score=$(grep "REMARK VINA RESULT" "$log" | head -n 1 | awk '{print $4}')
    
    echo "$ligand,$score" >> docking_scores.csv
done
