#!/bin/bash

echo " We are going to play a game"
echo " you will have to guess how many files are in this directory"
echo " Don't worry, i will give you hint after every input and you will be allowed  infinite number of inouts"

echo ">> please input initial guess and press enter"

filecount=$( ls -A | wc -l) #Counting almost all files which includes hidden files

function take_input {
	read input
	while ! [[ "$input" =~ ^[0-9]+$ ]]
	do 
	echo "Pease input integer only"
	read input
	done 
	}

function check {
	while [[ $input -ne $filecount ]]
	do
		if [[ $input -gt $filecount ]]
		then echo ">>>>> Your input is too high, please enter input again"
		take_input
		else
		echo ">>>>> Your input is too low, please enter input again"
		take_input
		fi
	done
	if [[ $filecount -gt 1 ]]
	then
	echo "You are right, there are $filecount files in this directory, well done"
	elif [[ $filecount -eq 0 ]]
	then
	echo "You are right, there are no files in this directory, you should add some bbye"
	else
	echo "You are right, there is one file in this directory, well done"
	fi
	}

take_input			}
check

echo "The end!!"
