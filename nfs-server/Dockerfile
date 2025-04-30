FROM ubuntu:latest

# Install NFS server packages as per lab instructions (portmap is now rpcbind)
RUN apt-get update && apt-get install -y nfs-kernel-server nfs-common rpcbind

# Create the shared directory
RUN mkdir -p /home/partage && chmod 777 /home/partage

# Copy configuration files
COPY exports /etc/exports
COPY hosts.allow /etc/hosts.allow
COPY hosts.deny /etc/hosts.deny
COPY start.sh /start.sh

# Make the startup script executable
RUN chmod +x /start.sh

# Run the startup script
CMD ["/start.sh"]