#!/bin/bash

# Teaching script for 'pwd' command
# This script demonstrates basic usage and concepts of 'pwd'

echo "=============================================="
echo "Welcome to the 'pwd' command tutorial!"
echo "=============================================="
echo

# 1. Basic usage
echo "[1] Show current working directory:"
echo "Command: pwd"
echo "Output:"
pwd
echo
echo "----------------------------------------------"

# 2. Demonstrate changing directories
echo "[2] Change directory and use pwd:"
echo "Example: cd /tmp"
cd /tmp
echo "Now running: pwd"
pwd
echo
echo "----------------------------------------------"

# 3. Return to original directory
echo "[3] Return to original directory:"
echo "Command: cd -"
cd -
pwd
echo
echo "----------------------------------------------"

echo "=============================================="
echo "Summary of 'pwd' command:"
echo "- 'pwd' prints the full path of the current directory."
echo "- Useful for scripts and navigation."
echo "- Combine with 'cd' to explore different directories."
echo "Practice moving to other directories and use 'pwd' to see the path!"
echo "=============================================="
