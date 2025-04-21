#!/bin/bash/
help() {
    echo -e "(FINDDUPES)\t\tWelcome to this help manaul\t\t(1)\n\n\nHow To Use:\tcommand    path/to/dir    [option]\n\nExample: \tfinddupes /home/username\t finddupes --help\n\n[OPTIONS]\n\n Use the -h or --help flag to display this menu\n\nUse the -d flag to delete one of the files\n\nUse the -D to delete both files\n\nUse --show or -S to view the content of the duplicate files"
}
Options() {
    echo "For more options on how to use this program use -h or --help else q to quit"
}
finddupes() {
    if [[ $# -eq 1 ]]; then
        if [[ -d $1 ]]; then
            echo -e "\t\t\tValid directory!\n\n"
            isDup=$(fdupes $1)
            if [[ -n $isDup ]]; then
                echo -e "\t\tSome Duplicates found \n\n"
                fdupes $1
                Options
            else
                echo -e "\t\tNo duplicate found in this directory"
            fi
        elif [[ "$1" = "-h" ]] || [[ "$1" = "--help" ]]; then
            help
        else
            echo -e "\t\t\tInvalid Directory\n\n"
        fi
    elif [[ $# -eq 2 ]]; then
        if [[ -d $1 ]]; then
            echo -e "\t\t\tValid directory!\n\n"
            case $2 in
            -d)
                fdupes -Nd $1
                ;;
            -D)
                fdupes -rd $1
                ;;
            --show | -S)
                fdupes $1 | xargs cat
                ;;
            *)
                echo -e "\t\t\tInvalid Option\n\n"
                Options
                ;;
            esac
        else
            echo -e "\t\t\tInvalid Directory\n\n"
        fi
    elif [[ $# -eq 0 ]]; then
        help
        exit 1
    elif [[ $# -gt 2 ]]; then
        echo -e "Number of Parameters too high\n\n"
        help
        exit 1
    else
        help
        exit 1
    fi
}
