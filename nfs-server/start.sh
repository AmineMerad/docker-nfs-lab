#!/bin/bash

# Start required services
service rpcbind start
service nfs-kernel-server start

# Keep container running
tail -f /dev/null