#!/bin/bash

# Teaching script for 'cd' command
# This script demonstrates basic usage and concepts of 'cd'

echo "=============================================="
echo "Welcome to the 'cd' (change directory) tutorial!"
echo "=============================================="
echo

# 1. Show current directory
echo "[1] Current working directory:"
pwd
echo
echo "----------------------------------------------"

# 2. Change to /tmp directory
echo "[2] Change directory to /tmp"
echo "Command: cd /tmp"
cd /tmp
echo "Now current directory:"
pwd
echo "Contents of /tmp:"
ls -l
echo
echo "----------------------------------------------"

# 3. Change back to home directory
echo "[3] Change directory to home"
echo "Command: cd ~"
cd ~
echo "Now current directory:"
pwd
echo "Contents of home directory:"
ls -l
echo
echo "----------------------------------------------"

# 4. Relative path example
echo "[4] Create a sample folder and use relative path"
mkdir -p demo_folder
echo "Created folder: demo_folder"
echo "Command: cd demo_folder"
cd demo_folder
echo "Current directory after relative cd:"
pwd
ls -l
echo
echo "Returning to home directory"
cd ~
echo
echo "----------------------------------------------"

# 5. Summary
echo "=============================================="
echo "Summary of 'cd' command:"
echo "- 'cd <directory>' changes your current working directory."
echo "- 'cd ~' takes you to your home directory."
echo "- 'cd -' switches to the previous directory."
echo "- Use relative paths (e.g., 'cd demo_folder') or absolute paths (e.g., 'cd /tmp')."
echo "Practice moving between directories using cd, pwd, and ls!"
echo "=============================================="
