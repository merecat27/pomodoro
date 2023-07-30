#!/bin/bash

# prettify time length
prettify () {
	let m=$seconds/60
	let sec=$seconds%60
	let hr=$m/60
	let min=$m%60
}

# translate time frame from minutes to seconds
minutes=1
let seconds=$minutes*60

# count down
while [ $seconds -gt 0 ]; do
	sleep 1
	clear -x
	let seconds-=1
	prettify
	printf %02d:%02d:%02d'\n' $hr $min $sec | figlet
done

printf "Done!\n"
