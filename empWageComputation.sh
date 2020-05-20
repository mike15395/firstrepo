#!/bin/bash -x

wage_per_hour=20
full_time=8

empcheck=$[(RANDOM%2)]

if (( $empcheck ==1 ))
then
	wage=$[($wage_per_hour*$full_time)]
else
	wage=0
fi

