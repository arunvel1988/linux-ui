#!/bin/bash

while true
do
  load=$(uptime | awk -F'load average:' '{print $2}' | cut -d, -f1)

  if (( $(echo "$load > 2.0" | bc -l) )); then
    echo "High CPU load: $load"
  fi

  sleep 60
done
