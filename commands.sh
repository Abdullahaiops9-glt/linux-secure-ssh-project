## 👥 User Setup

groupadd admin
groupadd dev
groupadd guest

useradd -m -G admin admin1
useradd -m -G dev dev1
useradd -m -G guest guest1

## 🔐 Permissions
mkdir /secure_project
chown :admin /secure_project
chmod 770 /secure_project

## 🔑 SSH Setup
ssh-keygen
ssh-copy-id dev1@server_ip

## 🚫 Security Hardening
nano /etc/ssh/sshd_config

## Set:
PermitRootLogin no
PasswordAuthentication no

## Restart:
systemctl restart ssh
