#!/bin/bash

# Create required directories
mkdir -p /run/sendsigs.omit.d
mkdir -p /var/lib/nfs/rpc_pipefs
mkdir -p /var/lib/nfs/v4recovery

# Start required services in order
service rpcbind start
sleep 2

# Configure exports before starting NFS
exportfs -ra

# Start NFS server
service nfs-kernel-server start
sleep 2

# Show exports for debugging
exportfs -v

# Show RPC services
rpcinfo -p

# Keep container running
tail -f /dev/null