#!/bin/bash

echo "=============================================="
echo "Welcome to the 'find' command tutorial!"
echo "=============================================="
echo

# Prepare sample files and directories
echo "Creating sample directories and files for demonstration..."
mkdir -p demo_find/subdir
touch demo_find/file1.txt demo_find/file2.log demo_find/subdir/file3.txt
echo "Current directory structure:"
tree demo_find 2>/dev/null || ls -R demo_find
echo
echo "----------------------------------------------"

# 1. Find files by name
echo "[1] Find files by name:"
echo "Command: find demo_find -name 'file1.txt'"
echo "Output:"
find demo_find -name 'file1.txt'
echo
echo "Explanation: '-name' searches files with exact name pattern."
echo
echo "----------------------------------------------"

# 2. Find files by pattern (wildcards)
echo "[2] Find files with .txt extension:"
echo "Command: find demo_find -name '*.txt'"
echo "Output:"
find demo_find -name '*.txt'
echo
echo "Explanation: '*.txt' finds all files ending with .txt"
echo
echo "----------------------------------------------"

# 3. Find directories by name
echo "[3] Find directories:"
echo "Command: find demo_find -type d -name 'subdir'"
echo "Output:"
find demo_find -type d -name 'subdir'
echo
echo "Explanation: '-type d' restricts search to directories."
echo
echo "----------------------------------------------"

# 4. Find files by size
echo "[4] Find files larger than 0 bytes:"
echo "Command: find demo_find -type f -size +0c"
echo "Output:"
find demo_find -type f -size +0c
echo
echo "Explanation: '-size +0c' finds files greater than 0 bytes."
echo
echo "----------------------------------------------"

# 5. Execute command on found files
echo "[5] Execute a command on found files:"
echo "Command: find demo_find -name '*.txt' -exec cat {} \\;"
echo "Output:"
find demo_find -name '*.txt' -exec cat {} \;
echo
echo "Explanation: '-exec <command> {} \;' runs command on each found file."
echo
echo "----------------------------------------------"

# 6. Find files modified in last 1 day
echo "[6] Find files modified in last 1 day:"
echo "Command: find demo_find -type f -mtime -1"
echo "Output:"
find demo_find -type f -mtime -1
echo
echo "Explanation: '-mtime -1' finds files modified within the last 1 day."
echo
echo "----------------------------------------------"

# 7. Summary
echo "=============================================="
echo "Summary of 'find' command:"
echo "- 'find <path> -name <pattern>' searches files by name."
echo "- '-type f' for files, '-type d' for directories."
echo "- '-size <+/-size>' finds files by size."
echo "- '-exec <command> {} \\;' executes a command on each found file."
echo "- '-mtime <n>' finds files modified in last n days."
echo "Practice searching files and directories using find with different options!"
echo "=============================================="
