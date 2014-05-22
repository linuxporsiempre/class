#!/bin/bash





LIST=$(cat /root/bin/filetable.txt)
for ITEM in $LIST
do
	if [ "${ITEM/*:*/done}" = "done" ]
	then
		echo $ITEM >> /tmp/filetable.txt
	else
		read -p "Enter extension for $ITEM " EXT
		if [ "$EXT" ] 
		then
		# update 
			echo $ITEM:$EXT >> /tmp/filetable.txt
		else
		#empty extension isn't an extension
			echo $ITEM >> /tmp/filetable.txt
		fi
	fi
done
mv /tmp/filetable.txt /root/bin/filetable.txt

