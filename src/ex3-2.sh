#!/bin/sh
number1=$1
operator=$2
number2=$3
result=$(echo "$number1 $operator $number2" | bc)
echo $result
