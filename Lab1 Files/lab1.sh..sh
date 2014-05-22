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
		NUM=$(expr $NUM + 1)
	fi
done
echo
echo $NUM "Files not in the xml."

