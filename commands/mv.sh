#!/bin/bash

echo "=============================================="
echo "Welcome to the 'mv' (move/rename) command tutorial!"
echo "=============================================="
echo

# Prepare sample files and directories
echo "Creating sample files and directories for demonstration..."
mkdir -p demo_dir mv_demo
touch file1.txt file2.txt
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 1. Rename a single file
echo "[1] Rename a single file:"
echo "Command: mv file1.txt file1_renamed.txt"
mv file1.txt file1_renamed.txt
echo "Listing current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 2. Move a single file to a directory
echo "[2] Move a single file to a directory:"
echo "Command: mv file2.txt demo_dir/"
mv file2.txt demo_dir/
echo "Listing contents of demo_dir:"
ls -l demo_dir
echo
echo "----------------------------------------------"

# 3. Move multiple files to a directory
echo "[3] Move multiple files to a directory:"
touch move1.txt move2.txt
echo "Command: mv move1.txt move2.txt mv_demo/"
mv move1.txt move2.txt mv_demo/
echo "Listing contents of mv_demo:"
ls -l mv_demo
echo
echo "----------------------------------------------"

# 4. Interactive move (prompt before overwriting)
echo "[4] Interactive move (ask before overwriting existing files):"
echo "Creating a file to demonstrate interactive move..."
touch mv_demo/file2.txt
echo "Command: mv -i demo_dir/file2.txt mv_demo/"
echo "(You will be prompted if mv_demo/file2.txt exists)"
mv -i demo_dir/file2.txt mv_demo/
echo "Listing contents of mv_demo:"
ls -l mv_demo
echo
echo "----------------------------------------------"

# 5. Verbose move (show what is moved)
echo "[5] Move with verbose output:"
touch verbose_file.txt
echo "Command: mv -v verbose_file.txt mv_demo/"
mv -v verbose_file.txt mv_demo/
echo
echo "Listing contents of mv_demo:"
ls -l mv_demo
echo
echo "----------------------------------------------"

# 6. Summary
echo "=============================================="
echo "Summary of 'mv' command:"
echo "- 'mv <source> <destination>' moves a file or directory."
echo "- Can be used to rename a file: 'mv oldname newname'."
echo "- Move multiple files to a directory: 'mv file1 file2 dir/'."
echo "- '-i' prompts before overwriting existing files."
echo "- '-v' shows verbose output."
echo "Practice renaming and moving files and directories in different scenarios!"
echo "=============================================="
