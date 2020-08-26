#!/usr/bin/env bash
#File: guessinggame.sh
function nfiles {
find . -type f -depth 1 | wc -l
#only file no directory depth 1 to only count current directory
}
cnt=1
true=$(nfiles)

while [[ $cnt -gt 0 ]]
do
 echo "How many files are in the current directory?"
 read guess

 if [[ $guess -eq $true ]]
	then 
	echo "Correct!!The force is strong with you!"
	let cnt=0
  elif [[ $guess -gt $true ]]
	then 
	echo "Your number is too high."
  elif [[ $guess -lt $true ]]
	then 
	echo "Your number is too low."
 fi
done
