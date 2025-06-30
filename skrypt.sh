#!/bin/bash

if [[ "$1" == "--logs" ]]; then
    for i in {1..100}; do
        echo "Plik $i" > "log${i}.txt"
    done
fi

