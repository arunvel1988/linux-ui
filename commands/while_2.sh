#!/bin/bash

i=1
while [ $i -le 5 ] && [ $i -ne 3 ]
do
  echo $i
  i=$((i + 1))
done
