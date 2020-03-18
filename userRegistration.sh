#!/bin/bash -x
shopt -s extglob

# @ Description: User Registration Problem
# @ Author: Akshay Dhananjay Barve
# @ Version: 18.04.3 lts
# @ Since: 18th March 2020 / Wednesday

namePattern="^[A-Z][a-z]{2,}$"
emailPattern="^[a-zA-Z]{1,}([.]?[a-zA-Z]{1,})?[@]{1}[a-zA-Z]{1,}[.]{1}[a-z]{2,3}([.]?[a-z]{2})?$"
mobilePattern="^([0-9]{2}\s{1}[0-9]{10})$"
passwordPattern="[A-Za-z0-9]*$"

checkFirstName()
{
	read -p "Enter First Name " firstname
	if [[ $firstname =~ $namePattern ]]; then
		echo Valid First Name
	else
		echo Invalid First Name
	fi
}
checkLastName()
{
	read -p "Enter Last Name " lastname
   if [[ $lastname =~ $namePattern ]]; then
      echo Valid Last Name
   else
      echo Invalid Last Name
   fi
}
checkEmail()
{
	read -p "Enter Email-id " email
	if [[ $email =~ $emailPattern ]]; then
   	echo Valid Email-Id
	else
   	echo Invalid Email-Id
	fi
}
checkMobileNumber()
{
	echo "Enter Mobile Number With Country Code "
	read mobile
	if [[ $mobile =~ $mobilePattern ]]; then
      echo Valid Mobile Number
   else
      echo Invalid Mobile Number
   fi
}
checkPassword()
{
   read -p "Enter password " password
	if [[ ${#password} -ge 8 ]]
	then
		echo Valid password
	else
		echo Password Should Be Min 8 Chars Long
	fi
}
checkFirstName
checkLastName
checkEmail
checkMobileNumber
checkPassword
