#!/bin/bash

# beegfs-storage configuration
yum install -y beegfs-storage
mgmt_name="mgmt"
beegfsStorageDir="/storage"
name=$(hostname)
n=${name:2} # assuming the name will be cnX: cn1, cn2, ...
# we're just adding one storage device
/opt/beegfs/sbin/beegfs-setup-storage -p "$beegfsStorageDir" -s "$n" -i "$n01" -m "$mgmt_name"
# start the service
systemctl start beegfs-storage


