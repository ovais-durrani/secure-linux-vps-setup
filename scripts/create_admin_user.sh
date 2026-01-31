#!/bin/bash

read -p "Enter new admin username: " USERNAME

adduser $USERNAME
usermod -aG sudo $USERNAME

mkdir -p /home/$USERNAME/.ssh
chmod 700 /home/$USERNAME/.ssh

read -p "Paste public SSH key: " PUBKEY
echo $PUBKEY >> /home/$USERNAME/.ssh/authorized_keys

chmod 600 /home/$USERNAME/.ssh/authorized_keys
chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh

echo "User created and SSH key added"
