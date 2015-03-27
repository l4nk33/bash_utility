#!/bin/bash
#This script will play a guessing game with the user.
function GuessGame {
	while [ True ]; do
	a=$(shuf -i 1-10 -n 1)
	read -p "Guess a number between 1 and 10: " b
	if [[ -z "$b" ]]; then
		echo "Please enter a guess"
	elif [ $a = $b ]; then
		echo "Correct"
	elif [[ $b != "exit" && $b -lt 1 || $b -gt 10 ]]; then
		echo "Answer between the given range"
	elif [ $b = exit ]; then
		echo "Exiting..."
		break	
	else
		echo "Incorrect, the answer is $a"
	fi
	done
}
GuessGame
