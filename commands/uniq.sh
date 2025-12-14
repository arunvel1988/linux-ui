#!/bin/bash

echo "======================================================"
echo "UNIQ COMMAND – IN DEPTH (ADMIN + STUDENT LEVEL)"
echo "======================================================"
echo

############################################
# STEP 1: Create realistic files
############################################
echo "STEP 1: Creating sample files"
echo

cat > users.log <<EOF
arun
arun
bala
bala
bala
chitra
deepak
deepak
esha
EOF

cat > access.log <<EOF
192.168.1.10
192.168.1.10
192.168.1.2
192.168.1.2
192.168.1.2
10.0.0.1
10.0.0.5
10.0.0.5
EOF

cat > services.log <<EOF
ssh
ssh
nginx
nginx
nginx
docker
docker
EOF

echo "Files created:"
echo "- users.log"
echo "- access.log"
echo "- services.log"
echo
echo "------------------------------------------------------"

############################################
# 1. Basic uniq
############################################
echo "[1] Basic uniq"
echo "Command: uniq users.log"
uniq users.log
echo
echo "Removes only ADJACENT duplicate lines"
echo
echo "------------------------------------------------------"

############################################
# 2. uniq does NOT sort
############################################
echo "[2] uniq without sort (wrong usage)"
echo "Shuffling file first:"
shuf users.log | uniq
echo
echo "Result is incorrect because file is not sorted"
echo
echo "------------------------------------------------------"

############################################
# 3. Correct usage: sort + uniq
############################################
echo "[3] Correct usage (sort | uniq)"
echo "Command: sort users.log | uniq"
sort users.log | uniq
echo
echo "ALWAYS sort before uniq (99% real cases)"
echo
echo "------------------------------------------------------"

############################################
# 4. Count duplicates
############################################
echo "[4] Count duplicates"
echo "Command: sort users.log | uniq -c"
sort users.log | uniq -c
echo
echo "Shows occurrence count"
echo
echo "------------------------------------------------------"

############################################
# 5. Show only duplicate lines
############################################
echo "[5] Show duplicates only"
echo "Command: sort users.log | uniq -d"
sort users.log | uniq -d
echo
echo "------------------------------------------------------"

############################################
# 6. Show only unique lines
############################################
echo "[6] Show unique lines only"
echo "Command: sort users.log | uniq -u"
sort users.log | uniq -u
echo
echo "------------------------------------------------------"

############################################
# 7. Ignore case
############################################
echo "[7] Ignore case"
echo "Adding mixed case data"
echo -e "Admin\nadmin\nADMIN\nUser\nuser" > case.log
sort case.log | uniq -i
echo
echo "------------------------------------------------------"

############################################
# 8. Skip fields
############################################
echo "[8] Skip fields"
cat > logins.log <<EOF
user1 ssh
user1 ssh
user1 ftp
user2 ssh
user2 ssh
EOF

echo "Command: uniq -f1 logins.log"
uniq -f1 logins.log
echo
echo "-f1 skips first field"
echo
echo "------------------------------------------------------"

############################################
# 9. Skip characters
############################################
echo "[9] Skip characters"
cat > codes.log <<EOF
ERR_100
ERR_100
ERR_200
EOF

uniq -s4 codes.log
echo
echo "-s4 skips first 4 characters"
echo
echo "------------------------------------------------------"

############################################
# 10. Real admin example – top IPs
############################################
echo "[10] Real admin example – count IP hits"
sort access.log | uniq -c | sort -nr
echo
echo "Most frequent IPs at top"
echo
echo "------------------------------------------------------"

############################################
# 11. uniq with pipe
############################################
echo "[11] uniq in pipeline"
echo "Command: cat services.log | sort | uniq"
cat services.log | sort | uniq
echo
echo "------------------------------------------------------"

############################################
# 12. Output to file
############################################
echo "[12] Save output to file"
sort users.log | uniq > unique_users.txt
cat unique_users.txt
echo
echo "------------------------------------------------------"

############################################
# Summary
############################################
echo "======================================================"
echo "UNIQ – KEY POINTS EVERY STUDENT MUST REMEMBER"
echo "------------------------------------------------------"
echo "uniq removes ONLY adjacent duplicates"
echo "sort | uniq is the correct pattern"
echo "-c → count"
echo "-d → duplicates only"
echo "-u → unique only"
echo "-i → ignore case"
echo "-f → skip fields"
echo "-s → skip characters"
echo "======================================================"
