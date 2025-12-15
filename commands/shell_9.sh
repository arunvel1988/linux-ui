#!/bin/bash
echo "Enter a number:"
read num
case $num in
  1) echo "One" ;;
  2) echo "Two" ;;
  *) echo "Other" ;;
esac
