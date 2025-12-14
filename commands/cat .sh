#!/bin/bash

echo "=============================================="
echo "Welcome to the 'cat' (concatenate and view files) tutorial!"
echo "=============================================="
echo

# Prepare sample files for demonstration
echo "Creating sample files for demonstration..."
echo -e "Hello, this is file1.\nWelcome to Linux tutorials!" > file1.txt
echo -e "This is file2.\nLearning cat command step by step." > file2.txt
echo "Current directory contents:"
ls -l
echo
echo "----------------------------------------------"

# 1. View contents of a single file
echo "[1] View contents of a single file:"
echo "Command: cat file1.txt"
cat file1.txt
echo
echo "----------------------------------------------"

# 2. View contents of multiple files
echo "[2] View contents of multiple files:"
echo "Command: cat file1.txt file2.txt"
cat file1.txt file2.txt
echo
echo "----------------------------------------------"

# 3. Number the lines of a file
echo "[3] Number the lines of a file:"
echo "Command: cat -n file1.txt"
cat -n file1.txt
echo
echo "----------------------------------------------"

# 4. Show non-printing characters (like tabs)
echo "[4] Show non-printing characters:"
echo -e "Line1\tTabbed\nLine2" > file3.txt
echo "Command: cat -v file3.txt"
cat -v file3.txt
echo
echo "----------------------------------------------"

# 5. Concatenate files into a new file
echo "[5] Concatenate files into a new file:"
echo "Command: cat file1.txt file2.txt > combined.txt"
cat file1.txt file2.txt > combined.txt
echo "Listing new file combined.txt contents:"
cat combined.txt
echo
echo "----------------------------------------------"

# 6. Summary
echo "=============================================="
echo "Summary of 'cat' command:"
echo "- 'cat <file>' displays the contents of a file."
echo "- 'cat file1 file2' displays contents of multiple files sequentially."
echo "- 'cat -n <file>' numbers all lines."
echo "- 'cat -v <file>' shows non-printing characters like tabs and special symbols."
echo "- 'cat file1 file2 > newfile' concatenates files into a new file."
echo "Practice viewing and combining files using cat!"
echo "=============================================="
