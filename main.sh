operations=("Create database" "Drop database" "List databases" "Connect to database" "Exit")
select var in "${operations[@]}"
do
    case $var in
	"Connect to database")
	    source $scriptLocation/operations/connect.sh
	    ;;
	"Create database")
	    source $scriptLocation/operations/create.sh
	    ;;
	"Drop database")
	    source $scriptLocation/operations/drop.sh
	    ;;
	"List databases")
	    source $scriptLocation/operations/list.sh
	    ;;
	"Exit")
	    echo "Closing the app..."
	    break
	    ;;
	*)
	    echo "Invalid option!"
	    ;;
    esac
done
