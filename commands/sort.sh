#!/bin/bash

echo "======================================================"
echo "SORT COMMAND – IN DEPTH (ADMIN + STUDENT LEVEL)"
echo "======================================================"
echo

############################################
# STEP 1: Create realistic files
############################################
echo "STEP 1: Creating sample files"
echo

cat > students.txt <<EOF
101 Arun 85
104 Bala 72
102 Chitra 91
105 Deepak 65
103 Esha 85
EOF

cat > employees.csv <<EOF
ID,Name,Dept,Salary
3,Ravi,IT,60000
1,Anita,HR,45000
5,Suresh,Finance,70000
2,Kiran,IT,55000
4,Meena,HR,48000
EOF

cat > access.log <<EOF
192.168.1.10 GET
10.0.0.5 POST
192.168.1.2 GET
10.0.0.1 GET
172.16.0.3 POST
EOF

echo "Files created:"
echo "- students.txt"
echo "- employees.csv"
echo "- access.log"
echo
echo "------------------------------------------------------"

############################################
# 1. Basic alphabetical sort
############################################
echo "[1] Basic alphabetical sort"
echo "Command: sort students.txt"
sort students.txt
echo
echo "Sorts lines alphabetically (default)"
echo
echo "------------------------------------------------------"

############################################
# 2. Sort by numeric value
############################################
echo "[2] Numeric sort"
echo "Command: sort -n students.txt"
sort -n students.txt
echo
echo "Uses numeric comparison instead of text"
echo
echo "------------------------------------------------------"

############################################
# 3. Sort by specific column (key)
############################################
echo "[3] Sort by column (marks column)"
echo "Command: sort -k3 -n students.txt"
sort -k3 -n students.txt
echo
echo "-k3 → 3rd column"
echo "-n  → numeric"
echo
echo "------------------------------------------------------"

############################################
# 4. Reverse sort
############################################
echo "[4] Reverse sort"
echo "Command: sort -k3 -n -r students.txt"
sort -k3 -n -r students.txt
echo
echo "Highest marks first"
echo
echo "------------------------------------------------------"

############################################
# 5. Sort CSV file
############################################
echo "[5] Sort CSV by Salary column"
echo "Command: sort -t',' -k4 -n employees.csv"
sort -t',' -k4 -n employees.csv
echo
echo "-t',' → comma delimiter"
echo
echo "------------------------------------------------------"

############################################
# 6. Ignore header line
############################################
echo "[6] Sort CSV excluding header"
echo "Command: (head -n 1; tail -n +2 | sort -t',' -k4 -n) < employees.csv"
(head -n 1 employees.csv && tail -n +2 employees.csv | sort -t',' -k4 -n)
echo
echo
echo "------------------------------------------------------"

############################################
# 7. Unique sort
############################################
echo "[7] Unique sort"
echo "Command: sort -u students.txt"
sort -u students.txt
echo
echo "Removes duplicate lines"
echo
echo "------------------------------------------------------"

############################################
# 8. Case-insensitive sort
############################################
echo "[8] Case-insensitive sort"
echo "Command: sort -f students.txt"
sort -f students.txt
echo
echo "------------------------------------------------------"

############################################
# 9. Sort IP addresses
############################################
echo "[9] Sort IP addresses"
echo "Command: sort -V access.log"
sort -V access.log
echo
echo "-V handles version/IP sorting correctly"
echo
echo "------------------------------------------------------"

############################################
# 10. Month sort
############################################
echo "[10] Month sort example"
cat > months.txt <<EOF
Jan
Mar
Feb
Dec
Aug
EOF

sort -M months.txt
echo
echo "Sorts month names correctly"
echo
echo "------------------------------------------------------"

############################################
# 11. Output to file
############################################
echo "[11] Save sorted output"
echo "Command: sort -k3 -n students.txt > sorted_students.txt"
sort -k3 -n students.txt > sorted_students.txt
cat sorted_students.txt
echo
echo "------------------------------------------------------"

############################################
# 12. Check if file is already sorted
############################################
echo "[12] Check if file is sorted"
echo "Command: sort -c sorted_students.txt"
sort -c sorted_students.txt && echo "File is sorted"
echo
echo "------------------------------------------------------"

############################################
# 13. sort with pipe
############################################
echo "[13] sort with pipe"
echo "Command: cat students.txt | sort -k3 -n"
cat students.txt | sort -k3 -n
echo
echo "------------------------------------------------------"

############################################
# 14. Random sort
############################################
echo "[14] Random sort"
echo "Command: sort -R students.txt"
sort -R students.txt
echo
echo "------------------------------------------------------"

############################################
# Summary
############################################
echo "======================================================"
echo "SORT – KEY OPTIONS SUMMARY"
echo "------------------------------------------------------"
echo "-n  → numeric sort"
echo "-r  → reverse"
echo "-k  → column"
echo "-t  → delimiter"
echo "-u  → unique"
echo "-f  → ignore case"
echo "-V  → version/IP sort"
echo "-M  → month sort"
echo "======================================================"
