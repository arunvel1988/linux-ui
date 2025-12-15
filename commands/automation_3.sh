#!/bin/bash

for file in /var/log/*.log
do
  rm -f "$file"
  echo "Deleted $file"
done
