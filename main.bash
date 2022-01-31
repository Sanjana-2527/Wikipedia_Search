#!/bin/bash
if [[ -z "$1" ]]; then
  echo "Enter the word you want to search : "
  read word
elif [[ -n "$1" ]]; then
  word="$*"
fi

word="${word// /_}"

echo -ne '##########                (50%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

#Concatenating the word with url
link="https://en.wikipedia.org/wiki/$word"

echo "your Required link is : "
echo "$link"
echo "URL Saved Successfully"
echo "${link}">> "link.txt"