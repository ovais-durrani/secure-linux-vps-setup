#!/bin/bash

ufw --force reset

ufw default deny incoming
ufw default allow outgoing

ufw allow 2222/tcp
ufw allow 80/tcp
ufw allow 443/tcp

ufw --force enable
ufw status verbose
