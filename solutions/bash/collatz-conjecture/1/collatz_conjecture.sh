#!/usr/bin/env bash

(( NUMBER=$1 ))
(( STEPS=0 ))

if (( NUMBER < 1 )); then
  echo "Error: Only positive integers are allowed"
  exit 1
fi

while (( NUMBER != 1 )); do
  (( STEPS=STEPS + 1 ))
  if (( NUMBER % 2 == 0 )); then
    (( NUMBER=NUMBER / 2 ))
  else
    (( NUMBER=NUMBER * 3 + 1))
  fi
done
echo $STEPS
