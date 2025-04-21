#echo "What is your name? "
#read name
#if [ "$name" == "Jagoum" ]; then
#echo "You are the correct user."
#else echo "Sorry but you are not the correct user."
##!/bin/bash
# Check if a directory exists
#!/bin/bash
# Check if a directory exists
if [ -d "$1" ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
    exit 1
fi

