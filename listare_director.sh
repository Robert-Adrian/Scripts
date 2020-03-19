#!/bin/bash
if test -f $1
then
	echo "Error: Command needs a directories as a parameters to run"
	exit
elif [ $# -eq 0 ]
then
	echo "Error: Command needs a directores as a parameters to run"
	exit
fi

var=0
total=0

for i  in $1/*
do
	if test -f $i
	then
		var=$(wc -c < $i)
		if [ $# -eq 3 ]
		then
			if [ $var -ge $2 ]
			then
				if [ $var -gt $2 ]
				then
					echo $var":"$i>>$3
				fi
				total=$((total+var))
			fi
		elif [ $# -eq 2 ]
		then
			if [ $var -ge $2 ]
			then
				total=$((total+var))
			fi
		elif [ $# -eq 1 ]
		then
			total=$((total+var))
		fi
	elif test -d $i
	then
		if [ $# -eq 3 ]
		then
			var=$(./listare_director.sh $i $2 $3)
		elif [ $# -eq 2 ]
		then
			var=$(./listare_director.sh $i $2)
		elif [ $# -eq 1 ]
		then
			var=$(./listare_director.sh $i)
		fi
		total=$((total+var))
	fi
done
echo $total
