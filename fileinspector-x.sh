#!/bin/bash


#This will save the value of IFS
SAVEIFS=IFS
#This line will handle files with spaces in the name.
IFS=$(echo -en "\n\b")

ARG=$1
#PRE=""
#if [ "$(file --mime-type $ARG | awk '{print $2}')" = "application/x-directory" ];then
#       PRE=${ARG}/
#fi
for ITEM in $(find $ARG -type f)
do
#       ITEM=${PRE}${ITEM}
#       EXT=${FILE##*.}
#       BASE=${FILE%%*.}

        TYPE=$(file --mime-type $ITEM | awk '{print $2}')
        EXT=$(grep $TYPE /root/bin/filetable.txt | awk -F: '{print $2}')

#       LINE=${grep $TYPE}
#       FTYPE=${LINE%%:*}
#       FEXT=${LINE#*:}

        if [ "$EXT" != "${ITEM##*.}" ];then
        mv $ITEM $ITEM.${EXT}
        fi
done
IFS=SAVEIFS

