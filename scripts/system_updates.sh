#!/bin/bash

set -e #Exit immediately if any command exits with a non-zero status.

echo "Updating system..."
apt update && apt upgrade -y
apt install -y curl wget vim git ufw fail2ban

echo "System updated"
