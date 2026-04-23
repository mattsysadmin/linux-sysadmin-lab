\# Lab 07 - Server Management



\## Date

2026-04-23



\## Objective

Set up automated backups and server monitoring.



\## Automated Backups

\- Created backup script at /usr/local/bin/wp-backup.sh

\- Backs up MySQL database and WordPress files daily

\- Backups stored at /var/backups/wordpress

\- Old backups auto-deleted after 7 days

\- Cron job scheduled at 2AM daily



\## Server Monitoring

\- Installed Netdata v2.10.0

\- Collecting 3,983 metrics in real time

\- Dashboard accessible at http://127.0.0.1:19999

\- Monitoring: CPU, memory, disk, network, Apache, MySQL



\## Next Steps

\- Configure email alerts for critical events

\- Set up log monitoring

\- SSH key authentication

## SSH Key Authentication

\- Generated ED25519 key pair on Windows host

\- Copied public key to server \~/.ssh/authorized\_keys

\- Disabled password authentication in /etc/ssh/sshd\_config

\- Fixed cloud-init override in /etc/ssh/sshd\_config.d/50-cloud-init.conf

\- Verified password login returns "Permission denied (publickey)"

\- Server now only accepts key-based SSH login

