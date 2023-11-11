#!/bin/bash

if [ -z "$1" ]; then
  echo "사용법: $0 검색할_이름"
  exit 1
fi

result=$(grep "$1" DB.txt)

if [ -n "$result" ]; then
  echo "$result"
else
  echo "검색된 팀원 정보가 없습니다."
fi

