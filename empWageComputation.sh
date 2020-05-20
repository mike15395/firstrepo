#!/bin/bash -x

wage_per_hour=20
max_monthly_hours=100
num_working_days=20
is_full_time=1
is_part_time=2

total_working_days=0
total_emp_hrs=0

empcheck=$[(RANDOM%3)]
while [[ $total_working_days -lt $num_working_days && $total_emp_hrs -lt $max_monthly_hours ]]
do
((total_working_days++))
case $empcheck in
 
		$is_full_time )
				emphrs=8
				;;

		$is_part_time )
				emphrs=4
				;;
		* )
				emphrs=0
				;;
esac
		total_emp_hrs=$[(total_emp_hrs+emphrs)]
		dailywage=$[(emphrs*wage_per_hour)]
		monthlywage=$[(dailywage*num_working_days)]
done
