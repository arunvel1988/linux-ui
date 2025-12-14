#!/bin/bash

echo "=============================================="
echo "Welcome to the 'rmdir' (remove directory) tutorial!"
echo "=============================================="
echo

# Prepare sample directories for demonstration
echo "Creating sample directories..."
mkdir -p empty_dir
mkdir -p nonempty_dir/subdir
touch nonempty_dir/file1.txt
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 1. Remove an empty directory
echo "[1] Remove an empty directory:"
echo "Command: rmdir empty_dir"
rmdir empty_dir
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 2. Attempt to remove a non-empty directory
echo "[2] Attempt to remove a non-empty directory:"
echo "Command: rmdir nonempty_dir"
rmdir nonempty_dir 2>/dev/null || echo "Cannot remove: directory is not empty!"
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 3. Remove nested directories (empty only)
echo "[3] Remove nested empty directories:"
echo "Command: rmdir -p nonempty_dir/subdir"
rmdir -p nonempty_dir/subdir
echo "After removing subdir, check contents:"
ls -l nonempty_dir
echo
echo "----------------------------------------------"

# 4. Summary
echo "=============================================="
echo "Summary of 'rmdir' command:"
echo "- 'rmdir <dir>' removes empty directories."
echo "- Use 'rmdir -p parent/child' to remove nested empty directories."
echo "- Cannot remove directories containing files with rmdir; use 'rm -r' instead."
echo "Practice creating and removing directories using mkdir and rmdir!"
echo "=============================================="
