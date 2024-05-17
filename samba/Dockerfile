# Use an official Ubuntu base image
FROM ubuntu:latest

# Install samba and samba-common-bin
RUN apt-get update && apt-get install -y samba samba-common-bin

# Add the Samba configuration
RUN echo -e "[Main]\npath = /\navailable = yes\nvalid users = @users\nread only = no\nbrowsable = yes\npublic = yes\nwritable = yes" >> /etc/samba/smb.conf

# Create a user and set password for Samba
RUN useradd -m robinmorajker && echo -e 'SmokinMaskRobin3#\nSmokinMaskRobin3#' | smbpasswd -a -s robinmorajker

# Expose the necessary ports
EXPOSE 139 445

# Start the Samba service
CMD service smbd start && service nmbd start && bash
