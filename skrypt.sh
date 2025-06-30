#!/bin/bash

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "--date / -d     wyświetla datę"
    echo "--logs / -l     tworzy pliki log"
    echo "--help / -h     pomoc"
elif [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    N=${2:-100}
    for i in $(seq 1 "$N"); do
        echo "Plik $i" > "log${i}.txt"
    done
fi




