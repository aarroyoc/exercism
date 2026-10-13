#!/usr/bin/env bash

if [[ $# -ne 2 || ! ( $1 =~ ^-?[0-9]+([.][0-9]+)? ) || ! ( $2 =~ ^-?[0-9]+([.][0-9]+)? )]]; then
  echo "Usage: ./darts.sh <x> <y>"
  exit 1
fi

declare -r x="$1"
declare -r y="$2"

dist=$(echo "sqrt($x*$x + $y*$y)" | bc -l)

if (( $(echo "$dist > 10" | bc) )); then
  echo "0"
elif (( $(echo "$dist > 5" | bc) )); then
  echo "1"
elif (( $(echo "$dist > 1" | bc) )); then
  echo "5"
else
  echo "10"
fi
