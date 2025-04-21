#!/bin/bash
#This program is to find the duplicate files in directory and display them  to the user.
#This is also need to take some certain parameters such as directory and evaluate that the dir entered is correct.

if [[ $# -eq 1 ]]; then
    case $1 in
    --help | -H)
        help
        ;;
    *)
        if [[ -d $1 ]]; then
            echo -e "\t\t\tDuplicates found \n"
            find $1 -maxdepth 1 ! -empty -type f -exec md5sum {} + | sort | uniq -w32 -dD | cut -d" " -f 3
        else
            echo -e "\t\t\tInvalid Directory !!\n\n"
        fi
        ;;

    esac

elif [ $# -eq 2 ]; then

    case $1 in
    --fix | -F)
        if [[ -d $2 ]]; then
            echo -e "\t\t\tDuplicates found \n"
            find $2 -maxdepth 1 ! -empty -type f -exec md5sum {} + | sort | uniq -w32 -dD | cut -d" " -f 3
            fdupes -Nd $2
        else
            echo -e "\t\t\tInvalid Directory !!\n\n"
        fi
        ;;
    --help | -H)
        help
        ;;

    esac

else
    find . -maxdepth 1 ! -empty -type f -exec md5sum {} + | sort | uniq -w32 -dD | cut -d" " -f 3

fi

help() {
    echo -e "(FINDDUPES)\t\tWelcome to this help manaul\t\t(1)\n\n\nUse the -H or --help flag to display this menu\n\nUse the -fix or -F flag to delete one of the duplicate files\n\nUse the -D to delete both files"

}
