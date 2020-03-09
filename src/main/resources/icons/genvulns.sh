#!/bin/bash

if [ "$#" -ne 1 ]; then
    >&2 echo "Usage: $0 <icon_file>"
    >&2 echo "The icon file must be SVG (prefered) or PNG."
    exit 1
fi

if [ ! -f "$1" ]; then
    >&2 echo "Cannot read $1"
    exit 1
fi

AV=("L" "N")
AC=("H" "L")
PR=("H" "L" "N")
UI=("N" "R")
for i in "${AV[@]}"; do 
    for j in "${AC[@]}"; do
        for k in "${PR[@]}"; do
            for l in "${UI[@]}"; do
                cp "$1" ./${i}${j}$k${l}Vulnerability.svg
            done
        done
    done
done
