#!/bin/bash

# Flaga --help / -h
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "--date / -d         Wyświetla aktualną datę"
    echo "--logs / -l [N]     Tworzy N plików logx.txt (domyślnie 100)"
    echo "--error [N]         Tworzy N plików errorx.txt (domyślnie 100)"
    echo "--init              Klonuje repozytorium i dodaje ścieżkę do PATH"
    echo "--help / -h         Wyświetla tę pomoc"
    exit 0
fi

# Flaga --date / -d
if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date
    exit 0
fi

# Flaga --logs / -l
if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    N=${2:-100}
    for i in $(seq 1 "$N"); do
        echo "Plik $i" > "log${i}.txt"
    done
    exit 0
fi

# Flaga --error
if [[ "$1" == "--error" ]]; then
    N=${2:-100}
    mkdir -p errorx
    for i in $(seq 1 "$N"); do
        echo "Błąd $i" > "errorx/error${i}.txt"
    done
    exit 0
fi

# Flaga --init
if [[ "$1" == "--init" ]]; then
    git clone https://github.com/Jakub-Kulawiak1/lab4-git.git temp_repo
    export PATH=$PATH:$(pwd)/temp_repo
    echo "Zainicjalizowano repo i dodano ścieżkę"
    exit 0
fi








