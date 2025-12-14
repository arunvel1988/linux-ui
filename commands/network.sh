#!/bin/bash

echo "=============================================="
echo "Welcome to Linux Network Commands Tutorial!"
echo "=============================================="
echo

# ----------------------
# 1. ping - Check connectivity
# ----------------------
echo "[1] ping - Check network connectivity:"
echo "Command: ping -c 4 google.com"
ping -c 4 google.com
echo
echo "Explanation:"
echo "- Sends ICMP packets to test reachability."
echo "- '-c 4' sends 4 packets."
echo "- Displays round-trip time, packet loss, and latency statistics."
echo
echo "----------------------------------------------"

# ----------------------
# 2. netstat - Network statistics
# ----------------------
echo "[2] netstat - View active network connections and ports:"
echo "Command: netstat -tuln"
netstat -tuln
echo
echo "Explanation:"
echo "- '-t': TCP connections, '-u': UDP connections, '-l': Listening ports, '-n': Numeric addresses."
echo "- Displays local/remote address, port, and connection state."
echo
echo "----------------------------------------------"

# ----------------------
# 3. ssh - Secure remote login
# ----------------------
echo "[3] ssh - Connect to a remote machine securely:"
echo "Command Example: ssh user@remote_host"
echo "(Replace 'user' and 'remote_host' with actual values)"
echo
echo "Explanation:"
echo "- SSH provides secure, encrypted remote login."
echo "- Common options: '-p PORT' to specify port, '-i keyfile' for private key authentication."
echo
echo "----------------------------------------------"

# ----------------------
# 4. scp - Secure copy files over network
# ----------------------
echo "[4] scp - Copy files between hosts:"
echo "Command Example: scp localfile.txt user@remote_host:/path/to/destination/"
echo "(Replace 'user' and 'remote_host' with actual values)"
echo
echo "Explanation:"
echo "- Securely copies files using SSH."
echo "- Syntax: scp [options] <source> <destination>"
echo "- Can copy single files, multiple files, or entire directories (-r)."
echo
echo "----------------------------------------------"

# ----------------------
# Summary
# ----------------------
echo "=============================================="
echo "Summary of Network Commands:"
echo "- ping: test connectivity and latency."
echo "- netstat: view active connections, listening ports, and network stats."
echo "- ssh: securely login to remote machines."
echo "- scp: securely copy files between hosts."
echo "Practice connecting to remote systems and checking network status safely!"
echo "=============================================="
