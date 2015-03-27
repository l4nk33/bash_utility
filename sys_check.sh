#!/bin/bash
#This is a script that will provide a system update
a=$(ps aux | head)
b=$(netstat -r)
c=$(df -h | grep -A 1 "Avail" | cut -c 56-)
d=$(lsblk)
function SystemUpdate {
	printf "Currently running processes:\n%s\n" "$a"
	printf "\n\nDisk Space:\n\n%s\n%s\n" "$c" "$d"
	printf "\n\n%s\n" "$b"
}
SystemUpdate
