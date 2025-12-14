#!/bin/bash

# Teaching script for 'ls' command
# This script demonstrates basic usage and common options of 'ls'

echo "=============================================="
echo "Welcome to the 'ls' command tutorial!"
echo "=============================================="
echo

# 1. Basic usage
echo "[1] Basic listing:"
echo "Command: ls"
echo "Output:"
ls
echo
echo "----------------------------------------------"

# 2. Long format listing
echo "[2] Long format listing (detailed info):"
echo "Command: ls -l"
echo "Output:"
ls -l
echo
echo "----------------------------------------------"

# 3. Include hidden files
echo "[3] Show hidden files:"
echo "Command: ls -a"
echo "Output:"
ls -a
echo
echo "----------------------------------------------"

# 4. Long format with hidden files
echo "[4] Long format with hidden files:"
echo "Command: ls -la"
echo "Output:"
ls -la
echo
echo "----------------------------------------------"

# 5. Human-readable sizes
echo "[5] Long listing with human-readable file sizes:"
echo "Command: ls -lh"
echo "Output:"
ls -lh
echo
echo "=============================================="
echo "This concludes the 'ls' tutorial."
echo "You have learned:"
echo "- Basic listing"
echo "- Long format (-l)"
echo "- Hidden files (-a)"
echo "- Combining options (-la)"
echo "- Human-readable sizes (-lh)"
echo "Practice these commands on different directories!"
echo "=============================================="
