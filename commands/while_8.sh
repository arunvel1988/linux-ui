#!/bin/bash

i=1
while [ $i -le 3 ]
do
  j=1
  while [ $j -le 3 ]
  do
    echo "$i $j"
    j=$((j + 1))
  done
  i=$((i + 1))
done
