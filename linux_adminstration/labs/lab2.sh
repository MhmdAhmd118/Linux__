#!/bin/bash


read -p "Pls enter first number: " x
read -p "Pls enter second number: " y
echo `echo $x+$y|bc` >> Abdulrahman_data
echo `echo $x-$y|bc` >> Abdulrahman_data
echo `echo $x*$y|bc` >> Abdulrahman_data
echo `echo $x*$y|bc` >> Abdulrahman_data

