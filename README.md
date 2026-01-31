## secure-linux-vps-setup
A security-focused Linux VPS setup demonstrating SSH hardening, firewall configuration, and intrusion prevention using industry best practices. Designed for production-ready, internet-facing servers with a clear, documented hardening process.

## Overview
This repository demonstrates a real-world, production-focused approach to securing and hardening a Linux VPS.
It reflects the same process I use when deploying internet-facing servers for clients, with an emphasis on least privilege, secure access, and intrusion prevention.

The goal is to deliver a stable, hardened Linux server that is safe to run in public cloud environments.

## Key Security Features
- Non-root administrative user setup
- SSH hardening (root login disabled, key-based auth only)
- Firewall configuration using UFW (least-privilege rules)
- Intrusion prevention with Fail2Ban
- System updates and baseline security tuning
- Logging and monitoring readiness

# Repository Structure
```
secure-linux-vps-setup/
├── README.md
├── scripts/
│   ├── create_user.sh
│   ├── ssh_hardening.sh
│   ├── ufw_setup.sh
│   ├── fail2ban_setup.sh
│   └── system_updates.sh
├── docs/
│   ├── architecture.md
│   └── security_checklist.md
```
# Usage
- Provision a fresh Linux VPS (Ubuntu or CentOS).
- Review each script before execution.
- Run scripts step-by-step as root or sudo user.
- Verify security status using the checklist in docs/.
  
⚠️ Always test in a staging or lab environment before applying to production.

## Intended Audience
- Linux system administrators
- DevOps engineers
- Freelancers and clients needing secure VPS setup
- Businesses looking for production-ready Linux server hardening

## Disclaimer
This repository is provided for educational and demonstration purposes.
Review and adapt configurations to meet your specific production requirements.
