#!/bin/bash

echo "=============================================="
echo "Welcome to Linux Process Management Commands Tutorial!"
echo "=============================================="
echo

# ----------------------
# 1. ps - Process Status
# ----------------------
echo "[1] ps - Display current running processes:"
echo "Command: ps"
ps
echo
echo "Command: ps aux"
ps aux
echo
echo "Explanation:"
echo "- 'ps' shows processes for current terminal."
echo "- 'ps aux' shows all processes with details: USER, PID, CPU, MEM, VSZ, RSS, TTY, STAT, START, TIME, COMMAND."
echo
echo "----------------------------------------------"

# ----------------------
# 2. top - Real-time process monitoring
# ----------------------
echo "[2] top - Interactive process monitoring:"
echo "Command: top"
echo "(Press 'q' to quit top)"
top -b -n 1 | head -n 20
echo
echo "Explanation:"
echo "- 'top' shows real-time CPU, memory usage, and processes."
echo "- Use 'q' to exit, 'k' to kill, 'r' to renice in interactive mode."
echo
echo "----------------------------------------------"

# ----------------------
# 3. kill - Terminate processes
# ----------------------
echo "[3] kill - Terminate a process by PID:"
echo "Command Example: kill -9 <PID>"
echo "(We will demonstrate safely with a sleep command)"
sleep 1000 &
PID=$!
echo "Started background sleep process with PID=$PID"
kill -9 $PID
echo "Process $PID terminated"
echo
echo "Explanation:"
echo "- 'kill <PID>' sends SIGTERM to gracefully terminate."
echo "- 'kill -9 <PID>' sends SIGKILL to forcefully terminate."
echo
echo "----------------------------------------------"

# ----------------------
# 4. nice - Set process priority
# ----------------------
echo "[4] nice - Start a process with a given priority:"
echo "Command: nice -n 10 sleep 30 &"
nice -n 10 sleep 30 &
echo "Started sleep 30 with niceness 10 (lower priority)"
echo
echo "Explanation:"
echo "- 'nice' sets process priority: lower number = higher priority, higher number = lower priority."
echo "- Default nice value is 0."
echo
echo "----------------------------------------------"

# ----------------------
# 5. nohup - Run process immune to hangups
# ----------------------
echo "[5] nohup - Run process even after logout:"
echo "Command: nohup sleep 60 &"
nohup sleep 60 > nohup_output.txt 2>&1 &
echo "Started sleep 60 with nohup; output redirected to nohup_output.txt"
echo
echo "Explanation:"
echo "- 'nohup' ignores HUP (hangup) signals."
echo "- Useful for long-running background processes."
echo "- Output should be redirected to a file."
echo
echo "----------------------------------------------"

# ----------------------
# Summary
# ----------------------
echo "=============================================="
echo "Summary of Process Management Commands:"
echo "- ps: view running processes."
echo "- top: monitor processes in real-time."
echo "- kill: terminate a process using PID."
echo "- nice: set process priority."
echo "- nohup: run processes immune to logout or hangups."
echo "Practice starting, monitoring, and killing processes safely!"
echo "=============================================="
