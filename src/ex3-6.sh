#!/bin/bash

create_and_compress() {
  local folder_name=$1
  local start_index=$2
  local end_index=$3

  mkdir -p "$folder_name"
  cd "$folder_name"

  for i in $(seq $start_index $end_index); do
    touch "file$i.txt"
  done

  tar -cvf "${folder_name}s.tar" *.txt
  cd -
}

create_and_compress "$1" 0 4

if [ "$2" == "ls" ]; then
  existing_files_count=$(ls -l $1/*.txt | wc -l)
  create_and_compress "$1" $existing_files_count $((existing_files_count+4))
fi
