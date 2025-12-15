#!/bin/bash

while ping -c1 8.8.8.8 >/dev/null
do
  echo "Network is up"
  sleep 5
done
