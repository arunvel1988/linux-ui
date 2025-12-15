#!/bin/bash

dirs=("/etc" "/var/www" "/home")

for d in "${dirs[@]}"
do
  tar -czf "$(basename $d).tar.gz" "$d"
done
