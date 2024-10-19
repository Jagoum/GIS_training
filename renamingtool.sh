#!/bin/bash
usage() {
    echo "This is a renaming tool. To rename you just need to write the name of the file and the extension you which to rename it to"

}
rename() {
    if [ $# -ne 2 ]; then
        echo "Sorry but you need to put two parameters"
        exit 
    # read -p "Name of the file: " filename
    # read -p "File extension Format[.extension] : " extid
    # read -p "New File extension Format[.extension]  : " new
    else
        mv $1 $2
    fi
}
view() {
    echo "$filename$new"
}

# echo "Welcome $(whoami) seems you want to do some renaming?"
# read answ
# if [ "$answ" == "yes" ]; then
#     usage
#     rename
#     view
# else
#     exit
# fi
