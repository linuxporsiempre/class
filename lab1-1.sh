#!/bin/bash


NUM=0
LIST=$(ls /root/bin/medialab)
        echo "Files not in media.xml:"
        echo
for ITEM in $LIST
FILE=$(grep /root/bin/medialab/media.xml)
do
        if [ "${FILE*/$ITEM*/found}" !="found}]
        then
                echo $ITEM
                NUM=$(($NUM + 1))

#               NUM=$(expr $NUM + 1)
#This command is too slow because is outside command, if I compare it to the command I'm using now this one is 6 seconds slower

        fi
done
echo
echo $NUM "Files not in the xml."
