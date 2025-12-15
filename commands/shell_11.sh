#!/bin/bash

echo "Enter OS name:"
read os

case $os in
  linux)
    echo "Linux OS"
    ;;
  windows)
    echo "Windows OS"
    ;;
  mac)
    echo "Mac OS"
    ;;
  *)
    echo "Unknown OS"
    ;;
esac
