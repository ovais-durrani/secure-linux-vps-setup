#!/bin/bash

cat > /etc/fail2ban/jail.local << EOF
[DEFAULT]
maxretry = 3
bantime = 1h
findtime = 10m
backend = systemd

[sshd]
enabled = true
port = 2222

EOF

systemctl enable fail2ban
systemctl restart fail2ban

fail2ban-client status sshd
