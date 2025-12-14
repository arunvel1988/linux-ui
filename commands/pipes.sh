#!/bin/bash

echo "===================================================="
echo "LINUX PIPES AND REDIRECTION – PRACTICAL DEMO"
echo "===================================================="
echo

echo "We will use meaningful files for demonstration."
echo

############################################
# 1. Output Redirection >
############################################
echo "[1] Output Redirection (>)"
echo "Command: echo 'Linux is powerful' > message.txt"

echo "Linux is powerful" > message.txt

echo "Contents of message.txt:"
cat message.txt
echo
echo "Explanation:"
echo "> creates or OVERWRITES a file"
echo
echo "----------------------------------------------------"

############################################
# 2. Append Redirection >>
############################################
echo "[2] Append Redirection (>>)"
echo "Command: echo 'Unix is stable' >> message.txt"

echo "Unix is stable" >> message.txt

echo "Contents of message.txt after append:"
cat message.txt
echo
echo "Explanation:"
echo ">> appends content without deleting existing data"
echo
echo "----------------------------------------------------"

############################################
# 3. Input Redirection <
############################################
echo "[3] Input Redirection (<)"
echo "Command: wc -l < message.txt"

wc -l < message.txt
echo
echo "Explanation:"
echo "< takes input FROM a file instead of keyboard"
echo
echo "----------------------------------------------------"

############################################
# 4. Pipe |
############################################
echo "[4] Pipe (|)"
echo "Command: ls /bin | head -5"

ls /bin | head -5
echo
echo "Explanation:"
echo "Output of 'ls /bin' becomes input to 'head'"
echo
echo "----------------------------------------------------"

############################################
# 5. Pipe with grep
############################################
echo "[5] Pipe with grep"
echo "Command: ls /etc | grep conf"

ls /etc | grep conf
echo
echo "Explanation:"
echo "Pipe passes directory listing to grep for filtering"
echo
echo "----------------------------------------------------"

############################################
# 6. Multiple Pipes
############################################
echo "[6] Multiple Pipes"
echo "Command: ps aux | grep root | wc -l"

ps aux | grep root | wc -l
echo
echo "Explanation:"
echo "ps → grep → wc"
echo "Each command processes the output of the previous one"
echo
echo "----------------------------------------------------"

############################################
# 7. Pipe + Redirection together
############################################
echo "[7] Pipe + Redirection together"
echo "Command: ls /usr/bin | grep python > python_commands.txt"

ls /usr/bin | grep python > python_commands.txt

echo "Contents of python_commands.txt:"
cat python_commands.txt
echo
echo "Explanation:"
echo "Filtered output is redirected into a file"
echo
echo "----------------------------------------------------"

############################################
# Summary
############################################
echo "===================================================="
echo "SUMMARY:"
echo ">   overwrite output"
echo ">>  append output"
echo "<   input from file"
echo "|   connect commands"
echo
echo "Pipes are the FOUNDATION of Unix philosophy."
echo "Small commands combined do powerful work."
echo "===================================================="
