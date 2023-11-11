#!/bin/bash


db_file="DB.txt"

name=$1
phone=$2

echo "$name $phone" >> "$db_file"

# 파일 내용을 출력합니다.
cat "$db_file"
