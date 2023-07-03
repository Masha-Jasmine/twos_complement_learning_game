#!/bin/bash
##############################
#Script Name: two's_complement_learing_game
#Description: This is a learning game for students to understand the two's complement and how to add numbers in the two's complement.
#Author: Masha Jasmine Grütter
##############################

echo "This is a game in which you can train your ability with the two's complement. Good luck!"

#user is asked to enter two integers until the input is correct (within the range -4 to 3 and an integer) 
while true; do
read -p 'Enter number 1 (has to be between -4 and 3 and an integer): ' number1 
read -p 'Enter number 2 (has to be between -4 and 3 and an integer): ' number2
    	
    	if ( [ "$number1" -ge "4" ] || [ "$number2" -ge "4" ] || [ "$number1" -le "-5" ] || [ "$number2" -le "-5" ] ); 
    	then
 		echo 'Your input is out of range, please enter a number between -4 and 3.'
 		
 	elif ( ! [[ $number1 =~ ^[-+]?[0-9]+$ ]] || ! [[ $number2 =~ ^[-+]?[0-9]+$ ]] );
 	then
 		echo 'Your input is non numeric or is not an integer, please put in a valid integer.'
 	
 	else break	 
	fi
	
done

#define the variables for the two's complement
D2B=({0..1}{0..1}{0..1}{0..1})
komplement1=${D2B[$number1]}
komplement2=${D2B[$number2]}

#user is asked to insert his/her integer number 1 in the two's complement representation until the input is correct
while true; do
read -p "Enter your first number (number 1) in the two's complement representation: " komplement1Student

if [ ! "$komplement1Student" = "$komplement1" ];
    	then
 		echo 'Your input isnt correct - try again!'
 	else break	 
	fi
done

#user is asked to insert his integer number 2 in the two's complement representation until the input is correct
while true; do
read -p "Enter your second number (number 2) in the two's complement representation: " komplement2Student

if [ ! "$komplement2Student" = "$komplement2" ];
    	then
 		echo "Your input isn't correct - try again!"
 	else break	 
	fi
done

additionNumeric=$(($number1 + $number2)) #Numbers are added and saved in variable 
addition=${D2B[$additionNumeric]} #Added number is transformed into two's complement

#user is asked to insert his integer (number1 + number2) in the two's complement system until the input is correct
while true; do
read -p "Add your 'number 1' and 'number 2' and enter the result in the twos complement representation: " additionStudent 

if [ ! "$additionStudent" = "$addition" ];
    	then
 		echo 'This is wrong - try again!'
 	else
 		echo "You did it! Great job!" 
 		break	 
	fi
done
