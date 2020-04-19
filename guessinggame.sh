#!/bin/bash

echo " We are going to play a game"
echo " you will have to guess how many files are in this directory"
echo " Don't worry, i will give you hint after every input and you will be allowed  infinite number of inouts"

echo ">> please input initial guess and press enter"

read input

function check_input {
	while [[ $input -ne 3 ]]
	do
		if [[ $input -gt 3 ]]
		then echo ">>>>> Your input is too high, please enter input again"
		read input
		else
		echo ">>>>> Your input is too low, please enter input again"
		read input
		fi
	done
	echo "You are right, there are 3 files in this directory, well done"
			}
check_input

echo "The end!!"

