#!/bin/bash -x

# @ Description: User Registration Problem
# @ Author: Akshay Dhananjay Barve
# @ Version: 18.04.3 lts
# @ Since: 17th March 2020 / Tuesday

checkDetails()
{
read -p "Enter First Name " firstname

pattern="^[A-Z][a-z]{2,}$"

if [[ $firstname =~ $pattern ]]
then
	echo Valid
else
	echo Invalid
fi
}
checkDetails
