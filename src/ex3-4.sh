#!/bin/sh

echo "리눅스가 재미있나요? (yes/no)"


read answer


answer=$(echo $answer | tr '[:upper:]' '[:lower:]')


case "$answer" in
  yes | yesyesyes | y | yesyes)
    echo "yes"
    ;;
  no | nono | nonono | nope)
    echo "no"
    ;;
  *)
    echo "yes 또는 no로만 대답해주세요."
    ;;
esac
