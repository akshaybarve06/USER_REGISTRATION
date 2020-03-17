#!/bin/bash -x

# @ Description: User Registration Problem
# @ Author: Akshay Dhananjay Barve
# @ Version: 18.04.3 lts
# @ Since: 17th March 2020 / Tuesday

read -p "Enter Username " username

pattern="^[A-Z][a-z]{2,}$"

if [[ $username =~ $pattern ]]
then
	echo Valid
else
	echo Invalid
fi

