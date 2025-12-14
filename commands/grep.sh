#!/bin/bash

echo "===================================================="
echo "GREP – COMPLETE IN-DEPTH PRACTICAL TUTORIAL"
echo "===================================================="
echo

echo "STEP 1: Create realistic data files"
echo

############################################
# Create sample data
############################################
cat > users.txt <<EOF
root:x:0:0:root:/root:/bin/bash
admin:x:100:100:Admin:/home/admin:/bin/bash
student:x:1000:1000:Student:/home/student:/bin/bash
guest:x:1001:1001:Guest:/home/guest:/bin/sh
testuser:x:1002:1002:Test:/home/test:/bin/bash
EOF

cat > app.log <<EOF
INFO  Application started
INFO  User admin logged in
WARN  Disk usage high
ERROR Database connection failed
INFO  User student logged out
ERROR Unable to write file
EOF

echo "Files created: users.txt, app.log"
echo
echo "----------------------------------------------------"

############################################
# 1. Basic grep
############################################
echo "[1] Basic grep (search a word)"
echo "Command: grep admin users.txt"
grep admin users.txt
echo
echo "Meaning: Finds lines containing 'admin'"
echo
echo "----------------------------------------------------"

############################################
# 2. Case-insensitive search
############################################
echo "[2] Case-insensitive search"
echo "Command: grep -i ADMIN users.txt"
grep -i ADMIN users.txt
echo
echo "Useful when case is unknown"
echo
echo "----------------------------------------------------"

############################################
# 3. Whole-word match
############################################
echo "[3] Whole-word matching"
echo "Command: grep -w root users.txt"
grep -w root users.txt
echo
echo "Avoids partial matches like 'rootuser'"
echo
echo "----------------------------------------------------"

############################################
# 4. Invert match
############################################
echo "[4] Invert match"
echo "Command: grep -v bash users.txt"
grep -v bash users.txt
echo
echo "Shows lines NOT containing 'bash'"
echo
echo "----------------------------------------------------"

############################################
# 5. Line numbers
############################################
echo "[5] Show line numbers"
echo "Command: grep -n student users.txt"
grep -n student users.txt
echo
echo "Very useful for debugging"
echo
echo "----------------------------------------------------"

############################################
# 6. Count matches
############################################
echo "[6] Count matching lines"
echo "Command: grep -c bash users.txt"
grep -c bash users.txt
echo
echo "Counts how many lines match"
echo
echo "----------------------------------------------------"

############################################
# 7. Multiple patterns
############################################
echo "[7] Multiple pattern search"
echo "Command: grep -E 'root|admin|student' users.txt"
grep -E 'root|admin|student' users.txt
echo
echo "Extended regular expressions"
echo
echo "----------------------------------------------------"

############################################
# 8. Anchors (^ and $)
############################################
echo "[8] Line anchors"
echo "Command: grep '^ERROR' app.log"
grep '^ERROR' app.log
echo
echo "Matches lines STARTING with ERROR"
echo

echo "Command: grep 'failed$' app.log"
grep 'failed$' app.log
echo
echo "Matches lines ENDING with 'failed'"
echo
echo "----------------------------------------------------"

############################################
# 9. Character classes
############################################
echo "[9] Character classes"
echo "Command: grep '[0-9]' users.txt"
grep '[0-9]' users.txt
echo
echo "Matches any digit"
echo
echo "----------------------------------------------------"

############################################
# 10. Recursive grep (logs)
############################################
echo "[10] Recursive grep"
mkdir -p logs
cp app.log logs/app1.log
cp app.log logs/app2.log

echo "Command: grep -r ERROR logs/"
grep -r ERROR logs/
echo
echo "Used heavily for log analysis"
echo
echo "----------------------------------------------------"

############################################
# 11. grep with pipe
############################################
echo "[11] grep with pipe"
echo "Command: ps aux | grep root"
ps aux | grep root
echo
echo "Filters output from another command"
echo
echo "----------------------------------------------------"

############################################
# 12. Exclude grep itself
############################################
echo "[12] Excluding grep process"
echo "Command: ps aux | grep root | grep -v grep"
ps aux | grep root | grep -v grep
echo
echo "Avoids matching the grep command itself"
echo
echo "----------------------------------------------------"

############################################
# 13. Context lines
############################################
echo "[13] Show context lines"
echo "Command: grep -C 1 ERROR app.log"
grep -C 1 ERROR app.log
echo
echo "Shows lines BEFORE and AFTER the match"
echo
echo "----------------------------------------------------"

############################################
# 14. Fixed string search
############################################
echo "[14] Fixed string search (fast)"
echo "Command: grep -F 'Database connection failed' app.log"
grep -F 'Database connection failed' app.log
echo
echo "Use -F when pattern is exact text"
echo
echo "----------------------------------------------------"

############################################
# 15. Quiet mode (exit status)
############################################
echo "[15] Quiet mode"
grep -q ERROR app.log

if [ $? -eq 0 ]; then
  echo "ERROR found in log file"
else
  echo "No ERROR found"
fi
echo
echo "Used inside scripts and automation"
echo
echo "----------------------------------------------------"

############################################
# Summary
############################################
echo "===================================================="
echo "GREP – KEY OPTIONS SUMMARY"
echo "grep pattern file"
echo "-i  ignore case"
echo "-w  whole word"
echo "-v  invert match"
echo "-n  line numbers"
echo "-c  count"
echo "-E  extended regex"
echo "-r  recursive"
echo "-C  context"
echo "-F  fixed string"
echo "-q  quiet (exit code only)"
echo
echo "grep is the BACKBONE of log analysis and troubleshooting."
echo "===================================================="
