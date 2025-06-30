if [[ "$1" == "--init" ]]; then
    git clone https://github.com/TWOJ-LOGIN/TWOJE-REPO.git temp_repo
    export PATH=$PATH:$(pwd)/temp_repo
fi





