#!/bin/bash


README.md: guessinggame.sh
	touch README.md
	echo "**The Guessing Game**" > README.md
	echo " ">> README.md
	echo "The lines of code in the gussing game bash script is :" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "  " >> README.md
	echo "The make was run at $(shell date) " >> README.md



