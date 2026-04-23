\# Notes - LAMP Stack \& WordPress Setup



\## Key Commands Learned



\### System

\- `uname -a` - show kernel and system info

\- `sudo apt update \&\& sudo apt upgrade -y` - update system

\- `sudo systemctl status <service>` - check service status

\- `sudo systemctl restart <service>` - restart a service

\- `sudo systemctl enable <service>` - enable service on boot



\### Apache

\- `sudo a2ensite <config>` - enable a site

\- `sudo a2dissite <config>` - disable a site

\- `sudo a2enmod <module>` - enable a module

\- Config files location: `/etc/apache2/sites-available/`



\### MySQL

\- `sudo mysql` - login as root

\- `CREATE DATABASE name;` - create database

\- `CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';` - create user

\- `GRANT ALL PRIVILEGES ON db.\* TO 'user'@'localhost';` - grant privileges

\- `FLUSH PRIVILEGES;` - apply privilege changes



\### Networking

\- `ip addr show` - show network interfaces and IPs

\- `sudo ufw status` - check firewall status

\- `sudo ufw allow <port>` - open a port

\- `sudo ss -tlnp` - show listening ports



\### Security

\- `sudo fail2ban-client status` - check fail2ban status

\- `sudo sshd -T | grep passwordauthentication` - check SSH config

\- SSH key location: `\~/.ssh/authorized\_keys`



\### Cloudflare Tunnel

\- `cloudflared tunnel create <name>` - create tunnel

\- `cloudflared tunnel route dns <tunnel> <hostname>` - add DNS record

\- Config location: `/etc/cloudflared/config.yml`



\## Key File Locations

\- WordPress: `/var/www/html/wordpress`

\- Apache config: `/etc/apache2/sites-available/`

\- SSH config: `/etc/ssh/sshd\_config`

\- Cloudflare tunnel config: `/etc/cloudflared/config.yml`

\- Backup script: `/usr/local/bin/wp-backup.sh`

\- Backups: `/var/backups/wordpress`

