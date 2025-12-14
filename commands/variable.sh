#!/bin/bash

echo "================================================================"
echo "SHELL VARIABLES & ENVIRONMENT VARIABLES – IN DEPTH"
echo "================================================================"
echo

###############################################################################
# 1. What is a shell variable?
###############################################################################
echo "1) SHELL VARIABLES"
echo "----------------------------------------------------------------"
echo "Shell variable exists ONLY in current shell"
echo "Syntax: variable=value"
echo "No spaces around '='"
echo

name="Arun"
age=30

echo "name=$name"
echo "age=$age"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 2. Variable naming rules
###############################################################################
echo "2) VARIABLE NAMING RULES"
echo "----------------------------------------------------------------"
echo "Valid:"
echo "VAR=10"
echo "my_var=20"
echo "_count=5"
echo
echo "Invalid:"
echo "1var=10   (cannot start with number)"
echo "my-var=5  (hyphen not allowed)"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 3. Accessing variables
###############################################################################
echo "3) ACCESSING VARIABLES"
echo "----------------------------------------------------------------"
city="Pune"
echo "City is $city"
echo "City is ${city}"
echo
echo "Braces avoid ambiguity:"
echo "File_${city}_data"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 4. Read-only variables
###############################################################################
echo "4) READ-ONLY VARIABLES"
echo "----------------------------------------------------------------"
readonly PI=3.14
echo "PI=$PI"
echo "PI cannot be modified"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 5. Unsetting variables
###############################################################################
echo "5) UNSET VARIABLES"
echo "----------------------------------------------------------------"
temp="delete_me"
echo "Before unset: temp=$temp"
unset temp
echo "After unset: temp=$temp"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 6. Command substitution
###############################################################################
echo "6) COMMAND SUBSTITUTION"
echo "----------------------------------------------------------------"
today=$(date)
echo "Today is: $today"
echo
echo "Equivalent old syntax:"
echo "`date`"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 7. Arithmetic variables
###############################################################################
echo "7) ARITHMETIC OPERATIONS"
echo "----------------------------------------------------------------"
a=10
b=5
sum=$((a + b))
echo "Sum=$sum"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 8. Special shell variables
###############################################################################
echo "8) SPECIAL SHELL VARIABLES"
echo "----------------------------------------------------------------"
echo "\$0 → Script name       : $0"
echo "\$1 → First argument    : $1"
echo "\$2 → Second argument   : $2"
echo "\$# → Argument count    : $#"
echo "\$@ → All arguments     : $@"
echo "\$? → Last exit status  : $?"
echo "\$$ → Process ID        : $$"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 9. Local vs Global (Environment) variables
###############################################################################
echo "9) LOCAL vs ENVIRONMENT VARIABLES"
echo "----------------------------------------------------------------"

local_var="I_am_local"
export env_var="I_am_environment"

echo "Local variable: $local_var"
echo "Environment variable: $env_var"
echo
echo "Local variable is NOT inherited by child shells"
echo "Environment variable IS inherited"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 10. Demonstrating inheritance
###############################################################################
echo "10) VARIABLE INHERITANCE"
echo "----------------------------------------------------------------"
echo "Opening subshell to test inheritance"
bash -c 'echo "Inside subshell:"; echo "local_var=$local_var"; echo "env_var=$env_var"'
echo
echo "---------------------------------------------------------------"

###############################################################################
# 11. Common environment variables
###############################################################################
echo "11) COMMON ENVIRONMENT VARIABLES"
echo "----------------------------------------------------------------"
echo "USER=$USER"
echo "HOME=$HOME"
echo "PATH=$PATH"
echo "SHELL=$SHELL"
echo "PWD=$PWD"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 12. PATH variable (VERY IMPORTANT)
###############################################################################
echo "12) PATH VARIABLE (CRITICAL)"
echo "----------------------------------------------------------------"
echo "PATH defines where shell searches commands"
echo
echo "Current PATH:"
echo "$PATH"
echo
echo "Adding custom path:"
echo 'export PATH=$PATH:/opt/scripts'
echo
echo "---------------------------------------------------------------"

###############################################################################
# 13. env vs set vs printenv
###############################################################################
echo "13) env vs set vs printenv"
echo "----------------------------------------------------------------"
echo "env        → environment variables"
echo "printenv   → environment variables"
echo "set        → shell + environment variables"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 14. Permanent environment variables
###############################################################################
echo "14) PERSISTENT VARIABLES"
echo "----------------------------------------------------------------"
echo "User level:"
echo "~/.bashrc"
echo "~/.bash_profile"
echo
echo "System level:"
echo "/etc/profile"
echo "/etc/environment"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 15. Positional parameters example
###############################################################################
echo "15) POSITIONAL PARAMETERS"
echo "----------------------------------------------------------------"
echo "Run script as:"
echo "./script.sh one two three"
echo
echo "Output:"
echo "Arg1=$1"
echo "Arg2=$2"
echo "Arg3=$3"
echo
echo "---------------------------------------------------------------"

###############################################################################
# 16. Best practices
###############################################################################
echo "16) BEST PRACTICES"
echo "----------------------------------------------------------------"
echo "Use uppercase for environment variables"
echo "Quote variables when unsure"
echo "Export only when needed"
echo "Avoid hardcoding paths"
echo
echo "---------------------------------------------------------------"

###############################################################################
# Summary
###############################################################################
echo "================================================================"
echo "SUMMARY – MUST REMEMBER"
echo "----------------------------------------------------------------"
echo "Shell variable → current shell only"
echo "Environment variable → inherited"
echo "export makes variable global"
echo "PATH is critical"
echo "Special variables are powerful"
echo "================================================================"
