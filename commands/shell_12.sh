#!/bin/bash

echo "1. Show Date"
echo "2. Show Calendar"
echo "3. Show Disk Usage"
echo "Enter your choice:"
read choice

case $choice in
  1)
    date
    ;;
  2)
    cal
    ;;
  3)
    df -h
    ;;
  *)
    echo "Invalid choice"
    ;;
esac
