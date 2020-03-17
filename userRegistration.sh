#!/bin/bash -x

# @ Description: User Registration Problem
# @ Author: Akshay Dhananjay Barve
# @ Version: 18.04.3 lts
# @ Since: 17th March 2020 / Tuesday

checkDetails()
{
read -p "Enter First Name " firstname
read -p "Enter Last Name " lastname

pattern="^[A-Z][a-z]{2,}$"

if [[ $firstname =~ $pattern ]]
then
	echo Valid First Name
else
	echo Invalid First Name
fi

if [[ $lastname =~ $pattern ]]
then
   echo Valid Last Name
else
   echo Invalid Last Name
fi

}
checkDetails
