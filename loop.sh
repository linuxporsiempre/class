#!/bin/bash

LIST="item1 item2 item3"

for ITEM in $LIST
do
	echo "item is $ITEM"
done




########################################################################
#!/bin/bash

LIST="$@"

for ITEM in $LIST
do
        echo "item is $ITEM"
done




########################################################################
#!/bin/bash
echo "input people's names"
read NAMES

LIST="NAMES"

for ITEM in $LIST
do
        echo "item is $ITEM"
done




########################################################################
#!/bin/bash

LIST=$(cat test.txt)

for ITEM in $LIST
do
        echo "item is $ITEM"
done

