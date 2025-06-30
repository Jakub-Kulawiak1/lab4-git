if [[ "$1" == "--error" ]]; then
    N=${2:-100}
    mkdir -p errorx
    for i in $(seq 1 "$N"); do
        echo "Błąd $i" > "errorx/error${i}.txt"
    done
fi






