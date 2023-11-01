#!/usr/bin/env bash

for t in tests/"$1"*."$2".in.json
do
    echo "$t"
    citeproc -s src/informationswissenschaft-theorie-methode-praxis.csl "$t"
done
