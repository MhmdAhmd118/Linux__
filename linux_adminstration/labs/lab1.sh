#!/bin/bash
read -p "What is your name?: " USER_NAME
echo "Welcom $USER_NAME"
echo "Created a file for you called ${USER_NAME}_data"
touch "${USER_NAME}_data"
read -p "Pls enter your city: " city
echo city = $city >> ${USER_NAME}_data
read -p "Pls enter your Age: " age
echo age = $age >> ${USER_NAME}_data
cat ${USER_NAME}_data
gedit ${USER_NAME}_data
