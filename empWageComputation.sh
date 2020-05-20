#!/bin/bash -x

wage_per_hour=20
max_monthly_hours=100
num_working_days=20
is_full_time=1
is_part_time=2

total_working_days=0
total_emp_hrs=0

declare -A dailywage
function get_work_hours()
{
	#local $empcheck=$1
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

	echo $emphrs
}

empcheck=$[(RANDOM%3)]
while [[ $total_working_days -lt $num_working_days && $total_emp_hrs -lt $max_monthly_hours ]]
do
((total_working_days++))

		total_emp_hrs="$(get_work_hours $empcheck)"
		dailywage["Day"$total_working_days]=$[(total_emp_hrs*wage_per_hour)]
		monthlywage=$[(dailywage[$total_working_days]*num_working_days)]
done

echo ${dailywage[@]}
total_salary=$[(total_emp_hrs*wage_per_hour)]
