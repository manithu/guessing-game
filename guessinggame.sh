#!/usr/bin/env bash
#File: guessinggame.sh

source nfiles.sh
cnt=1
true=$(nfiles)

while [[ $cnt -gt 0 ]]
do

 echo "Guess, how many files are in the current directory?"
 read guess

 if [[ $guess -eq $true ]]
	then 
	 echo "Correct!!The force is strong in you!"
	 let cnt=0
  elif [[ $guess -gt $true ]]
	then 
	echo "Your number is too high."
  elif [[ $guess -lt $true ]]
	then 
	echo "Your number is too low."
  else
	echo "Tell me a number young Padawan"
 fi

done
