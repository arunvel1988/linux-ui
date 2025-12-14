#!/bin/bash

echo "=============================================="
echo "Welcome to the 'cp' (copy) command tutorial!"
echo "=============================================="
echo

# Prepare sample files and directories
echo "Creating sample files and directories for demonstration..."
mkdir -p demo_dir
touch file1.txt file2.txt
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 1. Copy a single file
echo "[1] Copy a single file:"
echo "Command: cp file1.txt file1_copy.txt"
cp file1.txt file1_copy.txt
echo "Listing current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 2. Copy multiple files to a directory
echo "[2] Copy multiple files to a directory:"
echo "Command: cp file1.txt file2.txt demo_dir/"
cp file1.txt file2.txt demo_dir/
echo "Listing contents of demo_dir:"
ls -l demo_dir
echo
echo "----------------------------------------------"

# 3. Copy with verbose output
echo "[3] Copy with verbose output (shows what is copied):"
echo "Command: cp -v file1.txt file1_copy_verbose.txt"
cp -v file1.txt file1_copy_verbose.txt
echo
echo "Listing current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 4. Copy recursively (directories)
echo "[4] Copy a directory recursively:"
echo "Creating nested directories..."
mkdir -p src_dir/subdir
touch src_dir/file3.txt src_dir/subdir/file4.txt
echo "Command: cp -r src_dir demo_dir/"
cp -r src_dir demo_dir/
echo "Listing contents of demo_dir:"
ls -l demo_dir
echo
echo "----------------------------------------------"

# 5. Preserve timestamps and attributes
echo "[5] Preserve timestamps and file attributes:"
echo "Command: cp -p file1.txt file1_preserve.txt"
cp -p file1.txt file1_preserve.txt
echo "Listing file details:"
ls -l file1_preserve.txt
echo
echo "----------------------------------------------"

# 6. Interactive copy (ask before overwriting)
echo "[6] Interactive copy (prompt before overwrite):"
echo "Command: cp -i file1.txt file1_copy.txt"
echo "(If file1_copy.txt exists, you will be asked to confirm overwrite)"
cp -i file1.txt file1_copy.txt
echo
echo "----------------------------------------------"

# 7. Summary
echo "=============================================="
echo "Summary of 'cp' command:"
echo "- 'cp <source> <destination>' copies a file."
echo "- 'cp file1 file2 dir/' copies multiple files to a directory."
echo "- '-r' is needed to copy directories recursively."
echo "- '-v' shows verbose output (what is being copied)."
echo "- '-p' preserves timestamps and attributes."
echo "- '-i' asks for confirmation before overwriting."
echo "Practice copying files and directories with different options!"
echo "=============================================="
