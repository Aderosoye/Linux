# Linux Server Hardening – Enterprise Baseline

## Objective
Secure a Linux server following enterprise access control and network hardening principles.

## Actions Taken
- Created non-root admin user
- Disabled root and password-based SSH
- Implemented key-based authentication
- Enforced firewall with default deny
- Enabled automatic security updates

## Commands Used
adduser infraadmin
usermod -aG sudo infraadmin
sudo nano /etc/ssh/sshd_config
  PermitRootLogin no
  PasswordAuthentication no
  PubkeyAuthentication yes
sudo systemctl restart sshd

ssh-keygen -t ed25519
ssh-copy-id infraadmin@<server-ip>
ssh infraadmin@<server-ip>

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status verbose
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

sudo apt update && sudo apt upgrade -y
sudo apt install unattended-upgrades -y
sudo dpkg-reconfigure unattended-upgrades
cat /etc/apt/apt.conf.d/20auto-upgrades


## Outcome
Server now follows least-privilege access, reduced attack surface, and basic patch automation.

## Lessons
Security is about defaults, discipline, and visibility.
