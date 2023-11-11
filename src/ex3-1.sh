#!/bin/sh
var1="hello world"
number=$1

for i in $(seq 1 $number)
do
    printf "%s\n" "$var1"
done
