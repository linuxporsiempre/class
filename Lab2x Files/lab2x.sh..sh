#!/bin/bash



LIST=$(ls /root/bin/medialab | grep -v "media.xml")
        echo "Files in medialab directory that are not in media.xml:"
for ITEM in $LIST
do
        if [ -z "$(grep $ITEM /root/bin/medialab/media.xml)" ]
        then
                echo $ITEM
		((COUNT++))
        fi
done
echo $COUNT "Media files found that are not listed in media.xml"
echo
echo

NUM=0
#!=not "Is already integrated in bash"

LIST=$(grep "\.[Mm][Pp][3Gg]" /root/bin/medialab/media.xml | cut -d'>' -f2 | cut -d'<' -f1 | sort | uniq)
        echo "Files in media.xml that are not in medialabs directory"
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
echo $NUM "Media files in media.xml are missing in medialabs directory"
