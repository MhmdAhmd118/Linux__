#!/bin/bash
User_Name="Salem"
Password="0000"
read -p "Enter user name: " Name
read -p "Enter Password: " Pass
if [ $Name = $User_Name ]
then
if [ $Pass = $Password ]
then
echo "Welcome Back"
else
echo "Pls Try Again"
fi
else
echo "Invalid User Name"
fi


