directory=$PWD
count=0

for item in "$directory"/*
do
    [[ -d "$item" ]] && ((count++))
done

if [[ $count -eq 0 ]]
then
    echo "No databases found."
else
    for database in "$directory"/*
    do
        if [[ -d $database ]]; then
            echo "$(basename "$database")"
        fi
    done
fi

