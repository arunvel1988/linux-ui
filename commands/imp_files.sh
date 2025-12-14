#!/bin/bash

echo "========================================================"
echo "IMPORTANT LINUX SYSTEM FILES – ADMIN LEVEL EXPLANATION"
echo "========================================================"
echo

###############################################################################
# 1. /etc/passwd
###############################################################################
echo "1) /etc/passwd  (User account information)"
echo "--------------------------------------------------------"
echo "Format:"
echo "username:x:UID:GID:comment:home_directory:login_shell"
echo
echo "Example entries:"
head -n 5 /etc/passwd
echo
echo "Explanation:"
echo "- username      → login name"
echo "- x             → password stored in /etc/shadow"
echo "- UID           → user ID (0 = root)"
echo "- GID           → primary group ID"
echo "- home dir      → user's home directory"
echo "- shell         → default shell"
echo
echo "--------------------------------------------------------"

###############################################################################
# 2. /etc/shadow
###############################################################################
echo "2) /etc/shadow  (Encrypted passwords – root only)"
echo "--------------------------------------------------------"
echo "Format:"
echo "username:encrypted_password:last_change:min:max:warn:inactive:expire"
echo
echo "Access test:"
ls -l /etc/shadow
echo
echo "Only root can read this file"
echo
echo "--------------------------------------------------------"

###############################################################################
# 3. /etc/group
###############################################################################
echo "3) /etc/group  (Group information)"
echo "--------------------------------------------------------"
echo "Format:"
echo "group_name:x:GID:user_list"
echo
head -n 5 /etc/group
echo
echo "--------------------------------------------------------"

###############################################################################
# 4. /etc/hostname
###############################################################################
echo "4) /etc/hostname  (System hostname)"
echo "--------------------------------------------------------"
cat /etc/hostname
echo
echo "Change hostname using:"
echo "hostnamectl set-hostname newname"
echo
echo "--------------------------------------------------------"

###############################################################################
# 5. /etc/hosts
###############################################################################
echo "5) /etc/hosts  (Local DNS resolution)"
echo "--------------------------------------------------------"
cat /etc/hosts
echo
echo "Used before DNS lookup"
echo
echo "--------------------------------------------------------"

###############################################################################
# 6. DNS configuration – /etc/resolv.conf
###############################################################################
echo "6) /etc/resolv.conf  (DNS servers)"
echo "--------------------------------------------------------"
cat /etc/resolv.conf
echo
echo "Contains nameserver entries"
echo
echo "--------------------------------------------------------"

###############################################################################
# 7. Network configuration
###############################################################################
echo "7) Network configuration files"
echo "--------------------------------------------------------"

if [ -d /etc/netplan ]; then
    echo "Ubuntu Netplan:"
    ls /etc/netplan
elif [ -d /etc/sysconfig/network-scripts ]; then
    echo "RHEL/CentOS network scripts:"
    ls /etc/sysconfig/network-scripts
else
    echo "Network config location varies by distro"
fi

echo
echo "--------------------------------------------------------"

###############################################################################
# 8. Services and systemd
###############################################################################
echo "8) Services (systemd)"
echo "--------------------------------------------------------"
echo "Service files location:"
echo "/etc/systemd/system/"
echo "/lib/systemd/system/"
echo
echo "List running services:"
systemctl list-units --type=service --state=running | head
echo
echo "--------------------------------------------------------"

###############################################################################
# 9. Startup scripts
###############################################################################
echo "9) Startup / boot configuration"
echo "--------------------------------------------------------"
echo "/etc/fstab  (mount points)"
cat /etc/fstab
echo
echo "--------------------------------------------------------"

###############################################################################
# 10. Cron jobs
###############################################################################
echo "10) Cron (scheduled jobs)"
echo "--------------------------------------------------------"
echo "/etc/crontab:"
cat /etc/crontab
echo
echo "Cron directories:"
echo "/etc/cron.hourly"
echo "/etc/cron.daily"
echo "/etc/cron.weekly"
echo "/etc/cron.monthly"
echo
echo "--------------------------------------------------------"

###############################################################################
# 11. Log files
###############################################################################
echo "11) Log files"
echo "--------------------------------------------------------"
echo "Main log directory: /var/log"
ls /var/log | head
echo
echo "Important logs:"
echo "- syslog / messages"
echo "- auth.log / secure"
echo "- kern.log"
echo "- boot.log"
echo
echo "--------------------------------------------------------"

###############################################################################
# 12. Shell configuration files
###############################################################################
echo "12) Shell configuration"
echo "--------------------------------------------------------"
echo "/etc/profile        → system-wide shell config"
echo "/etc/bashrc         → system-wide bash config"
echo "~/.bashrc           → user bash config"
echo "~/.bash_profile     → login shell config"
echo
echo "--------------------------------------------------------"

###############################################################################
# 13. Package management configuration
###############################################################################
echo "13) Package manager configuration"
echo "--------------------------------------------------------"

if command -v apt >/dev/null; then
    echo "APT config:"
    ls /etc/apt
elif command -v yum >/dev/null; then
    echo "YUM config:"
    ls /etc/yum.repos.d
fi

echo
echo "--------------------------------------------------------"

###############################################################################
# Summary
###############################################################################
echo "========================================================"
echo "SUMMARY – FILES EVERY LINUX ADMIN MUST KNOW"
echo "--------------------------------------------------------"
echo "/etc/passwd   → users"
echo "/etc/shadow   → passwords"
echo "/etc/group    → groups"
echo "/etc/hosts    → local DNS"
echo "/etc/resolv.conf → DNS servers"
echo "/etc/fstab    → mount points"
echo "/etc/crontab  → scheduled jobs"
echo "/var/log      → logs"
echo "/etc/systemd  → services"
echo "========================================================"
