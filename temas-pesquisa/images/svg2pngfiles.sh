#!/bin/bash

for entry in `ls svg-src/*.svg`; do
    echo $entry
    filename=$(basename "$entry")
    filename="${filename%.*}"
    inkscape -z --export-eps=${filename}.eps  ${entry}
done
