#!/bin/bash
echo "Welcome to To this task manager"
usage() {
    echo "Welcome to Task Manager"
    echo "Enter"
    echo "1. to add a task"
    echo "2. to view a task"
    echo "3. to modify a task"
    echo "4. to delete task"
    echo "5. to exit"
}
usage
read num
case $num in
    1)  touch file.txt
        read -p "Enter the task" task
        echo $task >> file.txt
    ;;
    2)
        cat file.txt
    ;;
    3)
        read -p "Enter the name you to substitude with: " name
        read -p "Enter the new name you wish to substitude with: " newname
        sed -i "s/$name/$newname/" file.txt
    ;;    
    4)
        rm file.txt
    ;;
    5)
        exit
    ;;
esac