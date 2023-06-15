#!/bin/bash

read -p "Enter number1: " x
read -p "Enter number2: " y
read -p "Enter operator: " z

if [ "$z" = "+" ]
then
result=$(($x + $y))
echo "Result: $result"
elif [ "$z" = "-" ]
then
 result=$(($x - $y))
elif [ "$z" = "*" ]
then
result=$(($x * $y))  
elif [ "$z" = "/" ]
then
 result=$(($x / $y))
  
else
  echo "Invalid operator"
fi
touch file
echo num1= $x >>file
echo num2= $y >>file
echo oper= $z >>file
echo $result >>file
