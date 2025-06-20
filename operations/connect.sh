#! /usr/bin/bash

databases=()
for database in */
do
    [[ -d "$database" ]] && databases+=("${database%/}")
done

if [[ ${#databases[@]} -eq 0 ]]
then
    echo "No databases found."
fi

echo "Select a database to connect to:"

select dataBaseName in "${databases[@]}"
do
    if [[ -n "$dataBaseName" ]]
    then
        cd "$dataBaseName" 
        break
    else
        echo "Invalid selection!"
    fi
done

source $scriptLocation/menu.sh
