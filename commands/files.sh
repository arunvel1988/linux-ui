#!/bin/bash

echo "===================================================="
echo "LINUX FILE SYSTEM STRUCTURE – PRACTICAL EXPLANATION"
echo "===================================================="
echo

echo "Linux follows a single-root directory structure."
echo "Everything starts from the root directory: /"
echo
echo "Command: ls /"
ls /
echo
echo "----------------------------------------------------"

# /
echo "[ / ] Root Directory"
echo "The top-level directory of the entire Linux filesystem."
echo "All other directories exist under /"
echo

# /bin
echo "[ /bin ] Essential user binaries"
echo "Contains basic user commands like ls, cp, mv, rm"
echo "Command: ls /bin | head"
ls /bin | head
echo

# /sbin
echo "[ /sbin ] System binaries"
echo "Contains system administration commands"
echo "Usually used by the root user"
echo "Command: ls /sbin | head"
ls /sbin | head
echo

# /etc
echo "[ /etc ] Configuration files"
echo "Contains system-wide configuration files"
echo "Examples: passwd, shadow, hosts"
echo "Command: ls /etc | head"
ls /etc | head
echo

# /home
echo "[ /home ] Home directories"
echo "Each normal user gets a home directory here"
echo "Command: ls /home"
ls /home
echo

# /root
echo "[ /root ] Root user's home directory"
echo "This is NOT /"
echo "Home directory of the root (administrator) user"
echo "Command: ls /root 2>/dev/null"
ls /root 2>/dev/null
echo

# /var
echo "[ /var ] Variable data"
echo "Contains logs, mail, spool files, cache"
echo "Important directory: /var/log"
echo "Command: ls /var"
ls /var
echo

# /tmp
echo "[ /tmp ] Temporary files"
echo "Used by applications for temporary storage"
echo "Files may be deleted on reboot"
echo "Command: ls /tmp"
ls /tmp
echo

# /usr
echo "[ /usr ] User applications and libraries"
echo "Contains user commands, libraries, documentation"
echo "Important subdirectories: /usr/bin, /usr/lib"
echo "Command: ls /usr | head"
ls /usr | head
echo

# /lib
echo "[ /lib ] Shared libraries"
echo "Contains essential shared libraries needed by /bin and /sbin"
echo "Command: ls /lib | head"
ls /lib | head
echo

# /opt
echo "[ /opt ] Optional software"
echo "Used for third-party or vendor software"
echo "Example: /opt/oracle, /opt/google"
echo "Command: ls /opt"
ls /opt
echo

# /dev
echo "[ /dev ] Device files"
echo "Represents hardware devices as files"
echo "Examples: hard disks, terminals"
echo "Command: ls /dev | head"
ls /dev | head
echo

# /proc
echo "[ /proc ] Process and kernel information"
echo "Virtual filesystem (not stored on disk)"
echo "Contains runtime system information"
echo "Command: ls /proc | head"
ls /proc | head
echo

# /sys
echo "[ /sys ] System information"
echo "Interface to kernel and hardware"
echo "Used for device and driver management"
echo "Command: ls /sys | head"
ls /sys | head
echo

echo "===================================================="
echo "SUMMARY:"
echo "/      → Root of filesystem"
echo "/bin   → Basic user commands"
echo "/sbin  → System commands"
echo "/etc   → Configuration files"
echo "/home  → User home directories"
echo "/root  → Root user home"
echo "/var   → Logs and variable data"
echo "/tmp   → Temporary files"
echo "/usr   → User programs and libraries"
echo "/lib   → Shared libraries"
echo "/opt   → Optional software"
echo "/dev   → Devices"
echo "/proc  → Process and kernel info"
echo "/sys   → Hardware and system info"
echo
echo "Understanding filesystem layout is CRITICAL for Linux administration."
echo "===================================================="
