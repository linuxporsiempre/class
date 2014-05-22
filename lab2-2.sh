#!/bin/bash


NUM=0
#!=not "Is already integrated in bash"

LIST=$(grep "\.[Mm][Pp][3Gg]" /root/bin/medialab/media.xml | cut -d'>' -f2 | cut                          -d'<' -f1 | sort | uniq)
        echo "Files not in media.xml:"
#echo $LIST
for ITEM in $LIST
do
        if [ ! -f /root/bin/medialab/$ITEM ]
        then
                echo $ITEM
                NUM=$(expr $NUM + 1)
        fi
done
echo
echo $NUM "Files not in the medialab."


