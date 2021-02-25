#!/bin/bash
# This script has to be run only once after the system is up
# OR we need to check on the need for restart after running yum update -y

touch /etc/yum.repos.d/beegfs.repo

cat > /etc/yum.repos.d/beegfs.repo << EOF
[BeeGFS]
name=BeeGFS
baseurl=http://mgmt:/install/beegfs/
enabled=1
gpgcheck=0

EOF

# restart after running this command
yum update -y && reboot

