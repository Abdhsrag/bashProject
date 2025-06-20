tableMenu=("Create table" "List tables" "Drop table" "Insert to table" "Select from table" "Delete from table" "Update table" "Exit")

while true 
do
    echo "Choose a table operation:"
    select option in "${tableMenu[@]}"
    do
        case $option in
            "Create table")
                source $scriptFilesLocation/table/create.sh
                ;;
            "List tables")
                source $scriptFilesLocation/table/list.sh
                ;;
            "Drop table")
                source $scriptFilesLocation/table/drop.sh
                ;;
            "Insert to table")
                source $scriptFilesLocation/table/insert_to_table.sh
                ;;
            "Select from table")
                source $scriptFilesLocation/table/select_from_table.sh
                ;;
            "Delete from table")
                source $scriptFilesLocation/table/delete_from_table.sh
                ;;
            "Update table")
                source $scriptFilesLocation/table/update_data.sh
                ;;
            "Exit")
                echo "Exiting database '$dataBaseName'..."
                exit 0
                ;;
            *)
                echo "Invalid option. Try again."
                ;;
        esac
    done
done
