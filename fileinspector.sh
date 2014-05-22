#!/bin/bash




ARG=$1
PRE=""
if [ "$(file --mime-type $ARG | awk '{print $2}')" = "application/x-directory" ];then
	PRE=${ARG}/
fi
for ITEM in $(ls $ARG)
do
	ITEM=${PRE}${ITEM}
#	EXT=${FILE##*.}
#	BASE=${FILE%%*.}
	
	TYPE=$(file --mime-type $ITEM | awk '{print $2}')
	EXT=$(grep $TYPE /root/bin/filetable.txt | awk -F: '{print $2}')

#	LINE=${grep $TYPE}
#	FTYPE=${LINE%%:*}
#	FEXT=${LINE#*:}
	
	if [ "$EXT" != "${ITEM##*.}" ];then
	mv $ITEM $ITEM.${EXT}
	fi
done
