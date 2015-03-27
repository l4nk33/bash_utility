#!/bin/bash
#This is a basic script that will remove all .bak files in the pwd while untouching original copies
a=$(ls)
b=$(pwd)
function RemoveBak {
	for i in $a; do 
		if [[ $i =~ \.bak ]]; then
			rm $i 
		elif [[ ! $i =~ \.bak ]]; then
			echo "Original file: $i has not been deleted"
		fi
	done
}
RemoveBak
 	
