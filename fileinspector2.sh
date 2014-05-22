#!/bin/bash

#1.Functionalize your program eg. if you're calling code more than
# once then put it in a function.
debug(){
	if [ "$DEBUG" -eq 1 ];then
		echo $1
	fi
}
DEBUG=1
#2.Add a syntax function that displays your program's syntax if
# a user doesn't pass an argument
syntax() {
	echo "$0 Please enter a FILE name or DIR name"
	exit
}
#3.Create a setup function that initializes any variables
# and creates any temporary directories.
setup() {
	ARG="$1"
	if [ ! "$ARG" ] ;then
		syntax
	fi

	#This will save the value of IFS
	SAVEIFS=$IFS
	#This line will handle files with spaces in the name.
	IFS=$(echo -en "\n\b")

	#PRE=""
	#if [ "$(file -b --mime-type $ARG)" = "application/x-directory" ];then
	#       PRE=${ARG}/
	#fi
}
setup "$1"
4.Create a message function that formats output on the screen
message() {
#      for ITEM in $(seq $1)
#     do
               echo -e "message: \e[1;31m${1}\e[0m"
#      done
}
#message=1


#5.Create an error message function that shows error messages on the screen
error() {



}


for ITEM in $(find $ARG -type f)
do
#       ITEM=${PRE}${ITEM}
#       EXT=${FILE##*.}
#       BASE=${FILE%%*.}

        TYPE=$(file -b --mime-type $ITEM)
        EXT=$(grep $TYPE /root/bin/filetable.txt | awk -F: '{print $2}')
	debug "debug: ${TYPE} ${EXT}" 
	message "${TYPE} ${EXT}"
#       LINE=${grep $TYPE}
#       FTYPE=${LINE%%:*}
#       FEXT=${LINE#*:}

        if [ "$EXT" != "${ITEM##*.}" ];then
        mv $ITEM $ITEM.${EXT}
        fi
done
##This will return the old value of IFS.
IFS=$SAVEIFS
