#!/bin/bash

echo "Enter a vowel:"
read ch

case $ch in
  a|e|i|o|u)
    echo "Vowel"
    ;;
  *)
    echo "Not a vowel"
    ;;
esac
