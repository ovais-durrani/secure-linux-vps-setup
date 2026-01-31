#!/bin/bash

SSHD=/etc/ssh/sshd_config

if [ -f ${SSHD}.bak ]; then
	echo "File exist"
else
	echo "File does not exist"
	cp $SSHD ${SSHD}.bak
fi

sed -i 's/^#*Port.*/Port 2222/' $SSHD
sed -i 's/^#*Protocol.*/Protocol 2/' $SSHD
sed -i 's/^#*PermitRootLogin.*/PermitRootLogin no/' $SSHD
sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication no/' $SSHD
sed -i 's/^#*PubkeyAuthentication.*/PubkeyAuthentication yes/' $SSHD
sed -i 's/^#*PermitEmptyPasswords.*/PermitEmptyPasswords no/' $SSHD
sed -i 's/^#*ChallengeResponseAuthentication.*/ChallengeResponseAuthentication no/' $SSHD
sed -i 's/^#*X11Forwarding.*/X11Forwarding no/' $SSHD
sed -i 's/^#*AllowTcpForwarding.*/AllowTcpForwarding no/' $SSHD
sed -i 's/^#*MaxAuthTries.*/MaxAuthTries 3/' $SSHD
sed -i 's/^#*ClientAliveInterval.*/ClientAliveInterval 300/' $SSHD
sed -i 's/^#*ClientAliveCountMax.*/ClientAliveCountMax 2/' $SSHD

systemctl restart ssh

echo "SSH hardened"
