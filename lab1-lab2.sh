#!/bin/bash


NUM=0
LIST=$(find -f /root/bin/medialab)
        echo "Files not in media.xml:"
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
echo "******************************************************"
echo "#################GRACIAS Grant########################"
echo "******************************************************"

NUM=0
#!=not
LIST=$(grep "\.[Mm][Pp][3Gg]" /root/bin/medialab/media.xml | cut -d'>' -f2 | cut -d'<' -f1)
        echo "Files not in media.xml:"
#echo $LIST
for ITEM in $LIST
do
        if [ ! -f /root/bin/medialab/$ITEM ]
        then
                echo $ITEM ;NUM=$(expr $NUM + 1)
        fi
done
echo
echo $NUM "Files not in the medialab."
echo "******************************************************"
echo "#################GRACIAS Grant########################"
echo "******************************************************"
