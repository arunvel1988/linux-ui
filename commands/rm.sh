#!/bin/bash

echo "=============================================="
echo "Welcome to the 'rm' (remove) tutorial!"
echo "=============================================="
echo

# Prepare sample files for demonstration
echo "Creating sample files for demonstration..."
touch file1.txt file2.txt
mkdir -p sample_dir
touch sample_dir/file3.txt
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 1. Remove a single file
echo "[1] Remove a single file:"
echo "Command: rm file1.txt"
rm file1.txt
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 2. Remove multiple files at once
echo "[2] Remove multiple files at once:"
echo "Command: rm file2.txt"
rm file2.txt
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 3. Remove a directory recursively
echo "[3] Remove a directory and its contents recursively:"
echo "Command: rm -r sample_dir"
rm -r sample_dir
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 4. Force remove without prompt
echo "[4] Force remove (ignore errors, no prompt):"
echo "Command: rm -f nonexistent.txt"
rm -f nonexistent.txt
echo "No error shown even if file does not exist."
echo
echo "----------------------------------------------"

# 5. Interactive remove (prompt before deleting)
echo "[5] Interactive remove example:"
echo "Creating file interactive.txt"
touch interactive.txt
echo "Command: rm -i interactive.txt"
echo "(You will be prompted to confirm deletion)"
rm -i interactive.txt
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 6. Summary
echo "=============================================="
echo "Summary of 'rm' command:"
echo "- 'rm <file>' deletes a file."
echo "- 'rm file1 file2' deletes multiple files."
echo "- 'rm -r <dir>' deletes a directory recursively."
echo "- 'rm -f <file>' forces deletion without prompt or error."
echo "- 'rm -i <file>' asks for confirmation before deletion."
echo "Practice safely removing files and directories in a test folder!"
echo "=============================================="
