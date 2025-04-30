FROM ubuntu:latest

# Install client packages as per lab instructions
RUN apt-get update && apt-get install -y nfs-common rpcbind

# Keep container running for manual interaction
CMD ["tail", "-f", "/dev/null"]