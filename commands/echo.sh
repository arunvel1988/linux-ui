#!/bin/bash

echo "=============================================="
echo "Welcome to the 'echo' command tutorial!"
echo "=============================================="
echo

# 1. Basic usage — print a simple text
echo "[1] Print a simple text:"
echo "Command: echo Hello, Linux Students!"
echo "Output:"
echo Hello, Linux Students!
echo
echo "Explanation: 'echo' prints the given text to the terminal."
echo
echo "----------------------------------------------"

# 2. Print multiple words with quotes
echo "[2] Print multiple words with quotes:"
echo 'Command: echo "Welcome to the Linux world!"'
echo "Output:"
echo "Welcome to the Linux world!"
echo
echo "Explanation: Quotes are used to preserve spaces and special characters."
echo
echo "----------------------------------------------"

# 3. Using variables
echo "[3] Using variables with echo:"
name="Arun"
echo 'Command: echo "Hello, $name"'
echo "Output:"
echo "Hello, $name"
echo "Explanation: Double quotes allow variable expansion. Single quotes do NOT expand variables."
echo
echo "Command: echo 'Hello, $name'"
echo "Output:"
echo 'Hello, $name'
echo
echo "----------------------------------------------"

# 4. Escape sequences with -e
echo "[4] Using escape sequences with -e option:"
echo "Command: echo -e 'Line1\nLine2\tTabbed'"
echo "Output:"
echo -e "Line1\nLine2\tTabbed"
echo
echo "Explanation: "
echo "- '\\n' creates a new line"
echo "- '\\t' creates a tab space"
echo "- '-e' enables interpretation of escape sequences"
echo
echo "----------------------------------------------"

# 5. Suppress newline with -n
echo "[5] Suppress newline using -n option:"
echo "Command: echo -n 'This is on the same line...'"
echo "Output:"
echo -n "This is on the same line..."
echo " <-- notice the next output continues on same line"
echo
echo "Explanation: '-n' prevents echo from adding a newline at the end."
echo
echo "----------------------------------------------"

# 6. Combine variables and escape sequences
echo "[6] Combine variables and escape sequences:"
user="Student"
echo "Command: echo -e 'Hello, $user\nWelcome to Linux tutorials!'"
echo "Output:"
echo -e "Hello, $user\nWelcome to Linux tutorials!"
echo
echo "----------------------------------------------"

# 7. Summary
echo "=============================================="
echo "Summary of 'echo' command:"
echo "- 'echo <text>' prints text to terminal."
echo "- Double quotes allow variable expansion; single quotes prevent it."
echo "- '-e' interprets escape sequences like \\n, \\t, etc."
echo "- '-n' prevents a newline at the end of output."
echo "- Useful for displaying messages, variables, or formatted text in scripts."
echo "Practice printing text, variables, and formatted outputs using echo!"
echo "=============================================="
