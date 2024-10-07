# !/bin/bash
# function countVowel(string vowel) 
# returns interger
# count = 0
# for letters in string 
# if letter in vowel
#   count=count+1
# endif
# end for
# return count
# end function

#for(i=0;i<name;i++)



echo "please enter a string"
 read name
count=0
for i in ${name[@]}; do
	if [ "$i" == "a" ]||[ "$i" == "e" ]||[ "$i" == "i" ]||[ "$i" == "o" ]||[ "$i" == "u" ]; then
           count=`expr $count + 1`
	fi
done

echo $count

