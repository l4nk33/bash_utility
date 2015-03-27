#!/bin/bash
#This is a basic script that will create a .bak file for all files in the pwd w/out cpying/repeating itself.
a=$(ls)
b=$(pwd)
function CreateBak {
	for i in $a; do 
		if [[ ! $i =~ \.bak ]]; then
			cp $i $b/$i.bak
		elif [[ $i =~ \.bak ]]; then
			echo "$i is already backed up"
		fi
	done
}
CreateBak
 	
