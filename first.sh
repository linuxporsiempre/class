#!/bin/bash




if [ `id -u` -eq 0 ]
then
	echo "Hello root"
else
	echo "Warning, you are not root you have to be root to run this"
	exit 1
fi 

########################################################################


if [[ 5 -gt 6 ]]
then
	echo "5 is greater then 6"
else
	echo "5 is not greater then 6"
fi


#######################################################################
#comparaciones entre dos simbolos 9-gt0 y (>).

if [[ 5 > 6 ]]	
then
	echo "5 is greater then6"
else
	echo "5 is not greater then 6"
fi

#######################################################################
VAR="bob"
if [[ -z $VAR ]]
then
	echo "VAR is empty"
else
	echo "VAR is not empty"
fi


#####################################################################
VAR=""
if [[ -z $VAR ]]
then
        echo "VAR is empty"
else
        echo "VAR is not empty"
fi

###################################################################
VAR="$1"


if [[ -z $VAR ]]
then
        echo "VAR is empty"
else
        echo 'VAR is not empty - the value of $VAR'" is $VAR"
fi


#####################################################################
VAR="$1"
VAR="${10}"

if [[ -z $VAR ]]
then
        echo "VAR is empty"
else
        echo 'VAR is not empty - the value of $VAR'" is VAR"
fi


####################################################################
IMAGE="$1"

if [[ -z $IMAGE ]]
then
	echo "IMAGE is empty"
	exit 1
else
	mogrify 1024x768 $IMAGE
fi


###################################################################

# To resize all Image with one script

IMAGE="$1"

#$0 is the name of the scripts 
echo $0


#$@ is all the arguments 
echo $@


if [[ -z $IMAGE ]]
then
        echo "IMAGE is empty"
        exit 1
else
        mogrify 1024x768 $IMAGE
fi


##################################################################
ARG="$1"
if [[ $ARG -eq 5 ]]
then
	echo "ARG IS 5"
elif [[ $ARG -eq 6 ]]
then
	echo "ARG is 6"
fi

########   Or this istesame thing   ##############################

case $ARG in
	5) echo "You made it"
	   echo "ARG is 5" ;;
	6) echo "ARG is 6" ;;
	*) echo "Is not either" ;;
esac



###################################################################

case $ARG in
        [yY]es) echo "You said yes"
esac


