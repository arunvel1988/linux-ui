#!/bin/bash

servers=("server1" "server2" "server3")

for s in "${servers[@]}"
do
  echo "Checking disk on $s"
  ssh "$s" df -h
done
