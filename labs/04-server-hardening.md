\# Lab 04 - Server Hardening



\## Date

2026-04-23



\## Objective

Secure the Ubuntu Server against common attacks.



\## Steps Completed



\### Firewall (UFW)

\- Enabled UFW firewall

\- Allowed OpenSSH (port 22)

\- Allowed HTTP (port 80)

\- Allowed HTTPS (port 443)

\- All other ports blocked by default



\### Fail2ban

\- Installed fail2ban

\- Configured jail.local with:

&#x20; - Ban time: 1 hour

&#x20; - Find time: 10 minutes

&#x20; - Max retries: 5

\- Enabled and started fail2ban service



\### Cloudflare Tunnel

\- Installed cloudflared

\- Tested quick tunnel successfully

\- Site confirmed accessible at temporary trycloudflare.com URL

\- Permanent named tunnel to be configured when domain is purchased



\## Verification

\- `sudo ufw status` - active with correct rules

\- `sudo systemctl status fail2ban` - active (running)



\## Next Steps

\- Purchase domain and add to Cloudflare

\- Create named Cloudflare Tunnel

\- Configure SSL via Let's Encrypt

\- Update WordPress site URL to domain


## WordPress Security Hardening
### Date
2026-04-25

### Issues Found
While analyzing `/var/log/apache2/access.log` we identified two security concerns:
- Someone attempted to access `wp-admin/install.php` which should not be publicly accessible after installation
- Someone queried `/?author=1` via the REST API to enumerate usernames -- a common first step in brute force attacks

### Fixes Applied

**Block install.php**
Added to `/etc/apache2/sites-available/wordpress.conf` outside the Directory block:
```apache
RedirectMatch 403 ^/wp-admin/install\.php$
```

**Block user enumeration**
Added to `/var/www/html/wordpress/wp-config.php` after <?php:
```php
if (isset($_GET['author'])) {
    header('HTTP/1.1 403 Forbidden');
    exit;
}
```

### Verification
```bash
curl -I http://localhost/wp-admin/install.php  # Returns 403
curl -I "http://localhost/?author=1"           # Returns 403
curl -I http://localhost                       # Returns 301 to https (site still works)
```

