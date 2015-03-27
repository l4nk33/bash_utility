#!/bin/bash
#This script will make it seem as though it is deleting files on the computer.
#include <time.h>
function ProgressBar {
	echo -ne '\n'
        echo -ne '|                     |(0%)\r'
        sleep 0.2
        echo -ne '|===>                 |(20%)\r'
        sleep 0.2
        echo -ne '|======>              |(35%)\r'
        sleep 0.2
        echo -ne '|=========>           |(50%)\r'
        sleep 0.2
        echo -ne '|=============>       |(75%)\r'
        sleep 0.2
        echo -ne '|===================> |(95%)\r'
        sleep 0.2
        tput setaf 2
	echo -ne '|=====================|(100%)\r'
	tput sgr0
        echo -ne '\n'
}
function DelPrank {
while [[ $(pwd) != / ]]; do
	tput bold
	pwd
	tput sgr0
	for i in $(ls); do
	echo -ne "Deleting $i\r"
	sleep 0.2
	done
	ProgressBar
	cd ..
	done
	tput blink; tput setab 7; tput setaf 1; tput bold
	echo "ALL FILES HAVE BEEN DELETED!!!"
	tput sgr0
}
DelPrank
