#!/bin/bash
#This program is to find the duplicate files in directory and display them  to the user.
#This is also need to take some certain parameters such as directory and evaluate that the dir entered is correct.

manaully () {
    dir=$1
    option=
    # this function is to check for duplicate files in a directory manually without using already defined tools like fdupes
    for i in $(ls $dir);do
        if [ -f $i ]; then
            md5sum $i
            
            var=$((ls $dir | xargs diff $i))
             
            if [ var  = "" ]; then
                echo "Duplicates found!"
                ls -s $i 
                
            else
                echo "No duplicate found!"
            fi
        fi
    done

} 
help() {
    echo -e "(FINDDUPES)\t\tWelcome to this help manaul\t\t(1)\n\n\nUse the -h or --help flag to display this menu\n\nUse the -d flag to delete one of the files\n\nUse the -D to delete both files"
}

Options() {
    echo "For more options on how to use this program use -h or --h else q to quit"
    
}



    
findDuplicate() {
    if [ $# -gt 0 ];then

            if [ -d $dir ]; then
                echo "Valid directory"
                fdupes $dir
                Options 
            else 
                echo "Path to directory provided is invalid"
                Options
            fi
    fi
}
findDuplicate
while true;do
    findDuplicate
    read option
    case $option in 
        -h|--help)
           help
           break
        ;;
        -d)
            fdupes -Nd $dir
            break
        ;;
        -D)
            fdupes -rd $dir
            break
        ;;
        q)
            break
        ;; 
        *)
            echo "Please enter one of the options above"
            help
            break
        ;;
    esac
done