#!/bin/bash

if [[ "$1" == "--init" ]]; then
    git clone https://github.com/Jakub-Kulawiak1/lab4-git.git temp_repo
    export PATH=$PATH:$(pwd)/temp_repo
fi





