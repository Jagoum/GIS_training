```
#!/bin/bash
echo "Welcome to To this task manager"
usage() {
    echo "Welcome to Task Manager"
    echo "Enter"
    echo "1. to add a task"
    echo "2. to view a task"
    echo "3. to modify a task"
    echo "4. to delete the entire task"
    echo "5. to view task history"
    echo "6. to exit"
}
todo() {
    usage
    read num
    case $num in
    1)
        touch file.txt
        touch tasklog.txt
        read -p "Enter the task : " task
        echo $task >>file.txt
        count=$(cat -n file.txt | wc -l)
        echo $count $task
        echo "Created $count $task at $(date)" >> tasklog.txt
        cat tasklog.txt
        echo "Enter r to return : "
        read r
        if [ "$r" = 'r' ]; then
            usage
            todo
        fi
        ;;
    2)
        cat -n file.txt
        read -p "Enter r to return : " r
        if [ "$r" = 'r' ]; then
            usage
            todo
        fi
        ;;
    3)
        read -p "Do you want do sustitude a task or delete it? [sub/del] : " ques
        case $ques in
        sub)
            cat -n file.txt
            read -p "Enter the task number : " id
            # read -p "Enter the name you to substitude with: " name
            # read -p "Enter the task you want to modify or update : " oldtask
            # cat -n file.txt > temp.txt
            read -p "Enter the new task : " newtask
            # hold=$(grep -e "^${id}" | cat file.txt | sed -i "/${id}/s/newtask" file.txt)
            #read -p "Enter the new name you wish to substitude with: " newname
            sed -i "${id}s/.*/$newtask/" file.txt

            read -p "Enter r to return : " r
            if [ "$r" = 'r' ]; then
                usage
                todo
            fi
            ;;
        del)
            read -p "To delete a line enter enter l, to delete a text enter t : " l
            if [ "$l" = 'l' ]; then
                cat -n file.txt
                read -p "Enter line number : " lnum
                sed -i "${lnum}"d file.txt
                cat -n file.txt
                read -p "Enter r to return home : " r
                if [ "$r" = 'r' ]; then
                    usage
                    todo
                fi

            elif [ "$l" = 't' ]; then
                read -p "Enter the task you want to delete : " txt
                sed -i "/$txt/d" file.txt
                read -p "Enter r to return : " r
                if [ "$r" = 'r' ]; then
                    usage
                    todo
                fi
            fi
            ;;

        *)
            exit
            ;;
        esac
        ;;
    4)
        rm file.txt
        read -p "Enter r to return : " r
        if [ "$r" = 'r' ]; then
            usage
            todo
        fi
        ;;
    5)
        cat tasklog.txt
        read -p "Will you like to clear your task history(log) [y/n]" nice
        if [ "$nice" = "y" ] || [ "$nice" = "Y" ]; then
            rm tasklog.txt
            echo "You have successfully cleared your task log"
            if [ "$r" = 'r' ]; then
                usage
                todo
            fi
        else
            if [ "$r" = 'r' ]; then
                usage
                todo
            fi
        fi
        ;;
    6)
        exit
        ;;

    *)
        echo "Invalid option "
        todo
        ;;
    esac
}
todo
```