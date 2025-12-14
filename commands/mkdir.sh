#!/bin/bash



echo "=============================================="
echo "Welcome to the 'mkdir' (make directory) tutorial!"
echo "=============================================="
echo

# 1. Basic usage
echo "[1] Create a single directory:"
echo "Command: mkdir test_folder"
mkdir -p test_folder
echo "Listing current directory:"
ls -l
echo
echo "----------------------------------------------"

# 2. Create multiple directories at once
echo "[2] Create multiple directories at once:"
echo "Command: mkdir dir1 dir2 dir3"
mkdir -p dir1 dir2 dir3
echo "Listing current directory:"
ls -l
echo
echo "----------------------------------------------"

# 3. Create nested directories
echo "[3] Create nested directories:"
echo "Command: mkdir -p parent/child/grandchild"
mkdir -p parent/child/grandchild
echo "Listing 'parent' directory:"
ls -l parent
echo
echo "----------------------------------------------"

# 4. Handling errors (directory already exists)
echo "[4] Try creating an existing directory without -p:"
echo "Command: mkdir test_folder"
mkdir test_folder 2>/dev/null || echo "Directory already exists! Use -p to avoid error."
echo
echo "----------------------------------------------"

# 5. Summary
echo "=============================================="
echo "Summary of 'mkdir' command:"
echo "- 'mkdir <dir>' creates a new directory."
echo "- 'mkdir dir1 dir2' creates multiple directories at once."
echo "- 'mkdir -p parent/child/grandchild' creates nested directories."
echo "- Use '-p' to avoid errors if directories already exist."
echo "Practice creating directories in different paths and combinations!"
echo "=============================================="
