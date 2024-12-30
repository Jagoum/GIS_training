#!/bin/bash

echo "This Is a mathematical calculator"
read -p "Would you like to  some arithmeatic [y/n]" ans
if [ "$ans" == 'y' ] || [ "$ans" == 'Y' ]; then
    echo " Welcome to my calculator "
    echo "To exit write exit()"
    python3
else
    echo "Sorry but this program is not for you then"
    exit
fi
