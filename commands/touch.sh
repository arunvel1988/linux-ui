#!/bin/bash

echo "=============================================="
echo "Welcome to the 'touch' command tutorial!"
echo "=============================================="
echo

# 1. Basic usage — create a single file
echo "[1] Create a single file:"
echo "Command: touch file1.txt"
touch file1.txt
echo "Listing current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 2. Create multiple files at once
echo "[2] Create multiple files at once:"
echo "Command: touch file2.txt file3.txt"
touch file2.txt file3.txt
echo "Listing current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 3. Update timestamp of existing file
echo "[3] Update timestamp of an existing file:"
echo "Waiting 2 seconds to see the timestamp change..."
sleep 2
echo "Command: touch file1.txt"
touch file1.txt
echo "Listing files with timestamps:"
ls -l file1.txt
echo
echo "----------------------------------------------"

# 4. Create files in a different directory
echo "[4] Create files in another directory:"
mkdir -p demo_dir
echo "Command: touch demo_dir/newfile.txt"
touch demo_dir/newfile.txt
echo "Listing contents of demo_dir:"
ls -l demo_dir
echo
echo "----------------------------------------------"

# 5. Using the -c option (do not create)
echo "[5] Using the -c option (do not create new file if it doesn't exist):"
echo "Command: touch -c nonexistent.txt"
touch -c nonexistent.txt
echo "Check directory contents:"
ls -l
echo "Note: nonexistent.txt was not created!"
echo
echo "----------------------------------------------"

# 6. Summary
echo "=============================================="
echo "Summary of 'touch' command:"
echo "- 'touch <file>' creates a new empty file."
echo "- Can create multiple files at once: 'touch file1 file2'."
echo "- Updates the timestamp of an existing file."
echo "- '-c' prevents creating new files."
echo "- Useful for scripts and testing file operations."
echo "Practice creating and updating files using touch!"
echo "=============================================="
