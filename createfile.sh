#!/bin/sh
echo " This  scripe performs file operations [Read, Create, Delete]"
usage() {
   echo "$0 [absolute path to the file and operation [r,c,d] as input"
}
read -p "Input absolute path of the file:" path
read -p "Input operation type [r,c,d]" ops
createfile(){
	touch $path	
}
readfile(){
	cat $path
}
deletefile(){
	rm -rf $path
}


case $ops in
	c)
	  createfile
	  ;;
	r)
	  readfile
	  ;;
	d)
	  deletefile
	  ;;
	*)
	  usage
	  ;;
esac
