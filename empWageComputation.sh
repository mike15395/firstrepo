#!/bin/bash -x

wage_per_hour=20
working_days=20
full_time=8
part_time=4

empcheck=$[(RANDOM%3)]

case $empcheck in
 
		1 )
			wage=$[($wage_per_hour*$full_time*$working_days)]
			;;

		2 )
			wage=$[($wage_per_hour*$part_time*$working_days)]
			;;
		* )
			wage=0
			;;
esac

