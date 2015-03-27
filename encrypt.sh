#!/bin/bash
#This script will take a file as an argument and encrypt it.
a=$(pwd)
function Encrypt {
	cat $1 | tr [A-Za-z] [N-ZA-Nn-za-m] > $a/encrypted_$1
}
Encrypt $1 
