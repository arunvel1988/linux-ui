#!/bin/bash

i=1
while [ $i -le 5 ]
do
  if [ $i -eq 3 ]; then
    i=$((i + 1))
    continue
  fi
  echo $i
  i=$((i + 1))
done
