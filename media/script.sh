#!/bin/bash

for i in * 
do
	NAME=${i%.*}
	mv $i ${NAME} 
done


