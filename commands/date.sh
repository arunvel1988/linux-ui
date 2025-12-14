#!/bin/bash

echo "=============================================="
echo "Welcome to the Linux Miscellaneous Commands Tutorial!"
echo "=============================================="
echo

# ----------------------
# 1. date - Display current date and time
# ----------------------
echo "[1] date - Show current date and time:"
echo "Command: date"
date
echo "Explanation: Displays the current system date and time in default format."
echo "You can format output using '+FORMAT', e.g., date '+%Y-%m-%d %H:%M:%S'"
echo
echo "Command Example: date '+%A, %d %B %Y %T'"
date '+%A, %d %B %Y %T'
echo "Explanation: Shows full weekday, day, month, year, and time."
echo
echo "----------------------------------------------"

# ----------------------
# 2. whoami - Show current logged-in user
# ----------------------
echo "[2] whoami - Display current user:"
echo "Command: whoami"
whoami
echo "Explanation: Prints the username of the currently logged-in user."
echo
echo "----------------------------------------------"

# ----------------------
# 3. uptime - Show system uptime and load
# ----------------------
echo "[3] uptime - Show system uptime and load averages:"
echo "Command: uptime"
uptime
echo "Explanation: Shows how long the system has been running, current time, number of users, and load averages for 1, 5, and 15 minutes."
echo
echo "----------------------------------------------"

# ----------------------
# 4. hostname - Show system hostname
# ----------------------
echo "[4] hostname - Display system hostname:"
echo "Command: hostname"
hostname
echo "Explanation: Prints the network name of the system."
echo "Useful for identifying machines in networks or when connecting remotely."
echo
echo "----------------------------------------------"

# ----------------------
# 5. clear - Clear the terminal screen
# ----------------------
echo "[5] clear - Clear terminal screen:"
echo "Command: clear"
echo "Output: The terminal screen will be cleared."
echo "Explanation: Removes all previous commands and outputs from view to provide a clean terminal."
echo
echo "Try running 'clear' manually to see it in action."
echo
echo "----------------------------------------------"

# ----------------------
# 6. Summary
# ----------------------
echo "=============================================="
echo "Summary of Miscellaneous Linux Commands:"
echo "- date: Displays system date and time; supports formatting."
echo "- whoami: Shows the currently logged-in user."
echo "- uptime: Displays system uptime, number of users, and load averages."
echo "- hostname: Prints the machine's network name."
echo "- clear: Clears the terminal screen."
echo "Practice using these commands to understand your Linux system!"
echo "=============================================="
