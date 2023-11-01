#!/usr/bin/env bash

set -o nounset
set -o pipefail

for t in tests/*.in.json
do
    diff -u0 \
        "${t%.in.json}.out.json" \
         <(citeproc --style src/informationswissenschaft-theorie-methode-praxis.csl "$t")
done
