#!/bin/bash
#This script will take a file as an argument and decrypt it.
a=$(pwd)
function Decrypt {
	cat $1 | tr [N-ZA-Nn-za-m] [A-Za-z] > $a/decrypted_$1
}
Decrypt $1 
