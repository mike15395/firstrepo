#!/bin/bash -x

empcheck=$[(RANDOM%2)]

if (( $empcheck ==1 ))
then
	echo "employee present"
else
	echo "employee absent"
fi
