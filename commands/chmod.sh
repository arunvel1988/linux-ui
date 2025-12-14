#!/bin/bash

echo "=============================================="
echo "Welcome to the 'chmod' (change file permissions) tutorial!"
echo "=============================================="
echo

# Prepare sample files for demonstration
echo "Creating sample files for demonstration..."
touch file1.txt file2.txt
mkdir -p demo_dir
echo "Current directory contents with permissions:"
ls -l
echo
echo "----------------------------------------------"

# 1. View current permissions
echo "[1] View current permissions:"
echo "Command: ls -l"
ls -l
echo "Explanation: The left column shows permissions: e.g., -rw-r--r--"
echo "r = read, w = write, x = execute"
echo "First three are user(owner), next three group, last three others"
echo
echo "----------------------------------------------"

# 2. Change permissions using symbolic mode
echo "[2] Give execute permission to the user on file1.txt:"
echo "Command: chmod u+x file1.txt"
chmod u+x file1.txt
ls -l file1.txt
echo "Explanation: 'u' = user(owner), '+' = add permission, 'x' = execute"
echo
echo "----------------------------------------------"

# 3. Remove write permission from group
echo "[3] Remove write permission from group on file1.txt:"
echo "Command: chmod g-w file1.txt"
chmod g-w file1.txt
ls -l file1.txt
echo "Explanation: 'g' = group, '-' = remove, 'w' = write"
echo
echo "----------------------------------------------"

# 4. Add read permission to others
echo "[4] Add read permission to others on file1.txt:"
echo "Command: chmod o+r file1.txt"
chmod o+r file1.txt
ls -l file1.txt
echo "Explanation: 'o' = others, '+' = add, 'r' = read"
echo
echo "----------------------------------------------"

# 5. Change permissions using numeric (octal) mode
echo "[5] Set permissions to rwxr-xr-- (754) on file2.txt:"
echo "Command: chmod 754 file2.txt"
chmod 754 file2.txt
ls -l file2.txt
echo "Explanation: 7 = rwx (user), 5 = r-x (group), 4 = r-- (others)"
echo
echo "----------------------------------------------"

# 6. Change permissions recursively on a directory
echo "[6] Recursively set execute permission for user on demo_dir and contents:"
echo "Command: chmod -R u+x demo_dir"
chmod -R u+x demo_dir
echo "Listing demo_dir contents:"
ls -l demo_dir
echo "Explanation: '-R' applies changes to all files/subdirectories inside"
echo
echo "----------------------------------------------"

# 7. Summary
echo "=============================================="
echo "Summary of 'chmod' command:"
echo "- 'chmod u+x file' : add execute permission for user."
echo "- 'chmod g-w file' : remove write permission from group."
echo "- 'chmod o+r file' : add read permission to others."
echo "- 'chmod 754 file' : numeric (octal) mode for permissions."
echo "- 'chmod -R ... dir' : recursive permission changes for directories."
echo "- Always check permissions with 'ls -l'."
echo "Practice changing file and directory permissions safely!"
echo "=============================================="
