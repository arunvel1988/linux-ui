#!/bin/bash

echo "===================================================="
echo "SED – STREAM EDITOR (IN-DEPTH PRACTICAL TUTORIAL)"
echo "===================================================="
echo

############################################
# STEP 1: Create realistic files
############################################
echo "STEP 1: Creating sample files"
echo

cat > employees.txt <<EOF
101 Arun IT 50000
102 Bala HR 45000
103 Chitra IT 60000
104 Deepak Finance 55000
105 Esha HR 48000
EOF

cat > server.conf <<EOF
PORT=8080
ENV=dev
DEBUG=true
TIMEOUT=30
EOF

cat > app.log <<EOF
INFO server started
INFO user login
WARN disk usage high
ERROR database connection failed
INFO server stopped
EOF

echo "Files created:"
echo "- employees.txt"
echo "- server.conf"
echo "- app.log"
echo
echo "----------------------------------------------------"

############################################
# 1. Print file using sed
############################################
echo "[1] Print file"
echo "Command: sed -n 'p' employees.txt"
sed -n 'p' employees.txt
echo
echo "sed can print like cat (but it can do MUCH more)"
echo
echo "----------------------------------------------------"

############################################
# 2. Print specific line number
############################################
echo "[2] Print specific line"
echo "Command: sed -n '3p' employees.txt"
sed -n '3p' employees.txt
echo
echo "Prints only line 3"
echo
echo "----------------------------------------------------"

############################################
# 3. Print range of lines
############################################
echo "[3] Print range of lines"
echo "Command: sed -n '2,4p' employees.txt"
sed -n '2,4p' employees.txt
echo
echo "----------------------------------------------------"

############################################
# 4. Search and print
############################################
echo "[4] Search and print lines containing IT"
echo "Command: sed -n '/IT/p' employees.txt"
sed -n '/IT/p' employees.txt
echo
echo "----------------------------------------------------"

############################################
# 5. Substitute (basic)
############################################
echo "[5] Substitute text"
echo "Command: sed 's/HR/HumanResource/' employees.txt"
sed 's/HR/HumanResource/' employees.txt
echo
echo "Only first occurrence per line is replaced"
echo
echo "----------------------------------------------------"

############################################
# 6. Substitute globally
############################################
echo "[6] Global substitution"
echo "Command: sed 's/IT/InformationTech/g' employees.txt"
sed 's/IT/InformationTech/g' employees.txt
echo
echo "----------------------------------------------------"

############################################
# 7. Replace specific line
############################################
echo "[7] Replace on specific line"
echo "Command: sed '3s/60000/65000/' employees.txt"
sed '3s/60000/65000/' employees.txt
echo
echo "----------------------------------------------------"

############################################
# 8. Delete a line
############################################
echo "[8] Delete a line"
echo "Command: sed '2d' employees.txt"
sed '2d' employees.txt
echo
echo "----------------------------------------------------"

############################################
# 9. Delete range of lines
############################################
echo "[9] Delete range of lines"
echo "Command: sed '2,4d' employees.txt"
sed '2,4d' employees.txt
echo
echo "----------------------------------------------------"

############################################
# 10. Delete pattern-matching lines
############################################
echo "[10] Delete lines containing HR"
echo "Command: sed '/HR/d' employees.txt"
sed '/HR/d' employees.txt
echo
echo "----------------------------------------------------"

############################################
# 11. In-place editing
############################################
echo "[11] In-place edit (real admin use)"
echo "Command: sed -i 's/ENV=dev/ENV=prod/' server.conf"
sed -i 's/ENV=dev/ENV=prod/' server.conf
cat server.conf
echo
echo "IMPORTANT: -i modifies file permanently"
echo
echo "----------------------------------------------------"

############################################
# 12. Comment configuration lines
############################################
echo "[12] Comment configuration"
echo "Command: sed 's/^DEBUG/#DEBUG/' server.conf"
sed 's/^DEBUG/#DEBUG/' server.conf
echo
echo "----------------------------------------------------"

############################################
# 13. Insert line before match
############################################
echo "[13] Insert before pattern"
sed '/ERROR/i\ALERT: Error detected' app.log
echo
echo "----------------------------------------------------"

############################################
# 14. Append line after match
############################################
echo "[14] Append after pattern"
sed '/ERROR/a\Please check database immediately' app.log
echo
echo "----------------------------------------------------"

############################################
# 15. sed with pipe
############################################
echo "[15] sed with pipe"
echo "Command: grep WARN app.log | sed 's/WARN/WARNING/'"
grep WARN app.log | sed 's/WARN/WARNING/'
echo
echo "----------------------------------------------------"

############################################
# 16. Remove blank lines
############################################
echo "[16] Remove blank lines"
sed '/^$/d' app.log
echo
echo "----------------------------------------------------"

############################################
# 17. Replace delimiter
############################################
echo "[17] Using alternate delimiter"
sed 's|/|_|g' <<< "/var/log/nginx/access.log"
echo
echo "----------------------------------------------------"

############################################
# 18. Multiple sed commands
############################################
echo "[18] Multiple sed operations"
sed -e 's/INFO/LOG/' -e 's/server/APP/' app.log
echo
echo "----------------------------------------------------"

############################################
# Summary
############################################
echo "===================================================="
echo "SED – KEY CONCEPTS SUMMARY"
echo "Print, substitute, delete, insert, append"
echo "Pattern-based editing"
echo "In-place file modification"
echo "Config file automation"
echo
echo "SED is used heavily in:"
echo "- Log cleanup"
echo "- Config automation"
echo "- CI/CD pipelines"
echo "===================================================="
