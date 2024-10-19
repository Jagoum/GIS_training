#!/bin/bash
echo "---------------------- Backup Script ----------------------"
echo ""
echo ""
echo ""
echo ""
echo "Make sure you write backupfollowed by the name of the directory you are backing and the one you are backing to."
echo "Also ensure that the directory exits"
echo "To use this script, you must enter two directories "
echo "Example"
echo ""
echo "backup /home/user/ /Newfolder "
backup() {
    if [ $# -eq 2 ]; then
        if [[ -d $1 ]]; then
        # mkdir $2_backup
        tar czvf $2_backup.tar.gz $1
        cp -r $1 $2_backup
        fi
    fi
        
}