FROM ubuntu:latest

# Install NFS server packages
RUN apt-get update && apt-get install -y nfs-kernel-server nfs-common rpcbind

# Create the shared directory with correct path
RUN mkdir -p /home/partage && chmod 777 /home/partage

# Copy configuration files
COPY exports /etc/exports
COPY hosts.allow /etc/hosts.allow
COPY hosts.deny /etc/hosts.deny
COPY start.sh /start.sh

# Make the startup script executable
RUN chmod +x /start.sh

# Remove the premature exportfs command
CMD ["/start.sh"]