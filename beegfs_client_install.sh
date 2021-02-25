#/bin/bash

yum install -y kernel-devel beegfs-client beegfs-utils beegfs-helperd
mgmt_name="mgmt"
/opt/beegfs/sbin/beegfs-setup-client -m "$mgmt_name"
sed -i "s/^quotaEnabled.*/quotaEnabled                  = true/" /etc/beegfs/beegfs-client.conf
systemctl start beegfs-helperd beegfs-client
