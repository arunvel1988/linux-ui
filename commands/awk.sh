#!/bin/bash

echo "===================================================="
echo "AWK – COMPLETE IN-DEPTH PRACTICAL TUTORIAL"
echo "===================================================="
echo

echo "STEP 1: Create realistic data files"
echo

############################################
# Create sample files
############################################
cat > students.txt <<EOF
101 Arun 85
102 Bala 72
103 Chitra 90
104 Deepak 60
105 Esha 78
EOF

cat > app.log <<EOF
INFO user=admin action=login
INFO user=student action=logout
WARN user=admin action=disk_high
ERROR user=root action=db_failed
INFO user=student action=login
EOF

echo "Files created:"
echo "- students.txt"
echo "- app.log"
echo
echo "----------------------------------------------------"

############################################
# 1. Basic awk – print whole line
############################################
echo "[1] Print entire line"
echo "Command: awk '{print \$0}' students.txt"
awk '{print $0}' students.txt
echo
echo "Explanation:"
echo "\$0 represents the entire line"
echo
echo "----------------------------------------------------"

############################################
# 2. Print specific fields
############################################
echo "[2] Print specific fields"
echo "Command: awk '{print \$1, \$2}' students.txt"
awk '{print $1, $2}' students.txt
echo
echo "Explanation:"
echo "\$1 = first field, \$2 = second field"
echo
echo "----------------------------------------------------"

############################################
# 3. Field separator
############################################
echo "[3] Field separator"
echo "Command: awk -F ' ' '{print \$2, \$3}' students.txt"
awk -F ' ' '{print $2, $3}' students.txt
echo
echo "Default field separator is space"
echo
echo "----------------------------------------------------"

############################################
# 4. Conditional processing
############################################
echo "[4] Conditional processing"
echo "Command: awk '\$3 >= 80 {print \$2, \$3}' students.txt"
awk '$3 >= 80 {print $2, $3}' students.txt
echo
echo "Prints students with marks >= 80"
echo
echo "----------------------------------------------------"

############################################
# 5. BEGIN block
############################################
echo "[5] BEGIN block"
echo "Command: awk 'BEGIN {print \"ID NAME MARKS\"}' students.txt"
awk 'BEGIN {print "ID NAME MARKS"} {print $1,$2,$3}' students.txt
echo
echo "BEGIN runs BEFORE reading file"
echo
echo "----------------------------------------------------"

############################################
# 6. END block
############################################
echo "[6] END block"
echo "Command: awk 'END {print \"Processing Complete\"}' students.txt"
awk '{print $2}' students.txt | awk 'END {print "Processing Complete"}'
echo
echo "END runs AFTER file is processed"
echo
echo "----------------------------------------------------"

############################################
# 7. Calculations and totals
############################################
echo "[7] Calculations and totals"
echo "Command: awk '{sum += \$3} END {print \"Total:\", sum}' students.txt"
awk '{sum += $3} END {print "Total Marks:", sum}' students.txt
echo
echo "Used for reports and summaries"
echo
echo "----------------------------------------------------"

############################################
# 8. Average calculation
############################################
echo "[8] Average calculation"
awk '{sum += $3; count++} END {print "Average:", sum/count}' students.txt
echo
echo "----------------------------------------------------"

############################################
# 9. awk with conditions and formatting
############################################
echo "[9] Conditional output formatting"
awk '{
  if ($3 >= 80)
    print $2, "PASS"
  else
    print $2, "FAIL"
}' students.txt
echo
echo "----------------------------------------------------"

############################################
# 10. awk with log files
############################################
echo "[10] Log file analysis"
echo "Command: awk '/ERROR/ {print \$0}' app.log"
awk '/ERROR/ {print $0}' app.log
echo
echo "Pattern matching inside awk"
echo
echo "----------------------------------------------------"

############################################
# 11. Extract fields from logs
############################################
echo "[11] Extract fields from logs"
echo "Command: awk '{print \$2, \$3}' app.log"
awk '{print $2, $3}' app.log
echo
echo "----------------------------------------------------"

############################################
# 12. awk with pipe
############################################
echo "[12] awk with pipe"
echo "Command: grep ERROR app.log | awk '{print \$2}'"
grep ERROR app.log | awk '{print $2}'
echo
echo "Combining grep + awk"
echo
echo "----------------------------------------------------"

############################################
# 13. Change output field separator
############################################
echo "[13] Output field separator"
awk 'BEGIN {OFS=" | "} {print $1,$2,$3}' students.txt
echo
echo "OFS controls output formatting"
echo
echo "----------------------------------------------------"

############################################
# 14. NR and NF variables
############################################
echo "[14] Built-in variables"
echo "NR = Record Number, NF = Number of Fields"
awk '{print "Line:", NR, "Fields:", NF, "Data:", $0}' students.txt
echo
echo "----------------------------------------------------"

############################################
# 15. awk as report generator
############################################
echo "[15] Report generation"
awk '
BEGIN {
  print "Name | Marks"
  print "-------------"
}
{
  print $2, " | ", $3
}
END {
  print "-------------"
  print "Report End"
}' students.txt
echo

############################################
# Summary
############################################
echo "===================================================="
echo "AWK – KEY CONCEPTS SUMMARY"
echo "\$0  entire line"
echo "\$1..\$N fields"
echo "NR  line number"
echo "NF  number of fields"
echo "BEGIN / END blocks"
echo "Conditions, calculations, formatting"
echo
echo "AWK is a POWERFUL text processing language."
echo "Used heavily in log analysis, reporting, automation."
echo "===================================================="
