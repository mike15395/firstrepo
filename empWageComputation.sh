#!/bin/bash -x

wage_per_hour=20
full_time=8
part_time=4

empcheck=$[(RANDOM%3)]

case $empcheck in
 
		1 )
			wage=$[($wage_per_hour*$full_time)]
			;;

		2 )
			wage=$[($wage_per_hour*$part_time)]
			;;
		* )
			wage=0
			;;
esac

