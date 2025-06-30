if [[ "$1" == "--logs" && -n "$2" ]]; then
    for i in $(seq 1 "$2"); do
        echo "Plik $i" > "log${i}.txt"
    done
fi


