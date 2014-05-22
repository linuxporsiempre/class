#!/bin/bash


#This is how you can call a functionn from a script, line 1 and line 2 mean the same thing.
#source /root/bin/fundtion.lib
#. /root/bin/function.lib

message()
{
	local NAME="$1"
	local NAMEID="$2"
	echo "#####################################"
	echo "##"      "$NAME" - "$NAMEID"      "##"
	echo "#####################################"
	if [[ "NAME" = root ]] ;then
		return 0
	else
		return 1
	fi

}
LIST=$(cat /etc/passwd | awk -F: '{print $1","$3}')



for ITEM in $LIST
do
	USERNAME=${ITEM%,*}
	USERID=${ITEM#*,}
	OUTPUT=$(message $USERNAME $USERID)
	echo
	echo "$OUTPUT"
	echo
done
