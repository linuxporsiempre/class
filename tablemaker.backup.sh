#!/bin/bash



#Pre-req:
DIR=$'/root/bin/media'
echo -n > /root/bin/filetable.txt
for FILE in $(ls $DIR)
do
	TYPE=$(file --mime-type $DIR/$FILE | awk '{print $2}')
#	echo -n "Enter extension for $TYPE: "
#	read EXT
#	echo $TYPE $EXT
	echo $TYPE >>/root/bin/filetable.txt
done
###############################################################################
###############################################################################


echo -n > /tmp/filetable.txt
for TYPE in $(cat /root/bin/filetable.txt)
do
	echo -n  "Enter extension for $TYPE: "
	read EXT
	echo $TYPE $EXT >> /tmp/filetable.txt
done
mv /tmp/filetable.txt /root/bin/filetable.txt

