#!/bin/bash


NUM=0
LIST=$(ls /root/bin/medialab | grep -v "media.xml")
	echo "Files not in media.xml:"
	echo
for ITEM in $LIST
do
	if [ -z "$(grep $ITEM /root/bin/medialab/media.xml)" ]
	then
		echo $ITEM
		NUM=$(($NUM + 1))

#               NUM=$(expr $NUM + 1)
#This command is too slow because is outside command, if I compare it to the command I'm using now this one is 6 seconds slower

	fi
done
echo
echo $NUM "Files not in the xml."

