#!/usr/bin/bash

valid_name() {
    if [[ ! $1 =~ ^[a-zA-Z_][a-zA-Z_]*$ ]]
    then
        echo "Invalid name. Must contain only letters or underscores."
        return 1
    fi
    return 0
}

while true
do
    read -p "Enter the name of the database to drop: " dataBaseName

    if ! valid_name "$dataBaseName"
    then
        continue
    fi

    if [[ -d "$dataBaseName" ]]
    then
        read -p "Are you sure you want to delete the database '$dataBaseName'? (y/n): " confirmed
        if [[ $confirmed == [Yy] ]]
        then
            rm -r "$dataBaseName"
            echo "Database '$dataBaseName' deleted successfully."
        else
            echo "Canceled."
        fi
        break
    else
        echo "No database with this name!"
    fi
done
