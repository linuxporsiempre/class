#!/bin/bash




LIST=$(/$2/ , /$5/ awk -F, '{print $1 $2}' addresses.csv)
for ITEM in $LIST
do
        echo "The name are $ITEM"
done

