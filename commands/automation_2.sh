#!/bin/bash

servers=("app1" "app2" "app3")

for s in "${servers[@]}"
do
  ssh "$s" systemctl restart nginx
  echo "Nginx restarted on $s"
done
