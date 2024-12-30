#!/bin/bash
welcome() {
    echo -e "Hello Welcome to this Program\nChoose a number to select one of the occasions below.\n1 For Christmas\n2 For New Year\n3 For Default\n"
}
welcome
celebrating() {
    welcome
    read -p "Enter Number For Occasion: " occasion
    
    case $occasion in
        1|3)
            
            j=0
            echo "You have choosen the christmas Occation."
            read -p "Please enter your name : " name
            echo -e "\a\n\nMerry Christmas @# $name #@ .\n\nWould you like me to sing you a song? Do nothing if no and enter Y if yes\n"
            read -p "Enter: " ans 
            #  echo "Good Bye $name"
                # exit
            if [ $ans = 'Y' ]; then
                while [[ $j -le 2 ]]

                do
                    i=0
                    while [[ $i -le 2 ]] 
                
                    do
                        echo "*****************************************"
                        echo "|    We wish you a merry Christmas      |"
                        echo "*****************************************"
                        ((i++))
                    done
                    
                    echo "***********************************************************" 
                    echo "|    And a happy new year ....  And a happy new year .... |"
                    echo "***********************************************************"  
                    ((j++))             
                done
                    
            # else
            #     echo -e "Please enter one of the options  above"
            
 
            fi
        ;;
        2)
            echo "You have choosen the new year occasion "
            read -p "Enter your name : " name
            echo -e "Happy new year $name\a"
            echo -e "May you desires come true this year\n\a"
            echo -e "May your efforts be greatly increased\n"
            echo -e "Let your love for God beyound all bounds\n"
            echo -e "May you never know decrease but increase\n\a"
            echo -e "May you give your best in this new year\n and never you give up before the adversaries of life\n because your defenfer and strengthener is there to give you a hand of help. "
            echo -e "God Bless you $name. Remain Blessed in Jesus' mighty name i pray\n"
            echo ""
            echo -e "\t\t\t           AMEN             \n"
        ;;
        *)
            echo "Please enter one of the above options"
        ;;
    esac
}