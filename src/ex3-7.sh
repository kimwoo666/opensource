#!/bin/bash

dir_name=$1


mkdir -p "$dir_name"


cd "$dir_name"


for i in {0..4}; do

  touch "file$i.txt"
  mkdir -p "file$i"
  
  ln -s "../file$i.txt" "file$i/file$i.txt"
done
cd ..
