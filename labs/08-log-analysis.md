\# Lab 08 - Log Analysis



\## Date

2026-04-25



\## Objective

Learn to read and interpret Apache access logs to identify security threats.



\## Key Commands

\- `sudo tail -20 /var/log/apache2/access.log` - view last 20 lines of access log

\- `sudo tail -f /var/log/apache2/access.log` - watch log in real time

\- `sudo cat /var/log/apache2/error.log` - view error log



\## Log File Locations

\- Access log: `/var/log/apache2/access.log`

\- Error log: `/var/log/apache2/error.log`

\- Other vhosts: `/var/log/apache2/other\_vhosts\_access.log`



\## Log Format Breakdown

Each line in access.log follows this format:

