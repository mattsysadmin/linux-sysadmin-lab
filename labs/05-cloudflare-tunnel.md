\# Lab 05 - Cloudflare Tunnel Setup



\## Date

2026-04-23



\## Objective

Expose local WordPress site to the internet using Cloudflare Tunnel.



\## Steps Completed

\- Installed cloudflared on Ubuntu Server

\- Added matteilla.xyz to Cloudflare

\- Updated Porkbun nameservers to Cloudflare:

&#x20; - heather.ns.cloudflare.com

&#x20; - pedro.ns.cloudflare.com

\- Authenticated cloudflared with Cloudflare account

\- Created named tunnel: matteilla (ID: b6a6e1cc-5c18-40f7-b4ab-6e28de8db00c)

\- Created tunnel config at \~/.cloudflared/config.yml

\- Routed DNS for matteilla.xyz and www.matteilla.xyz to tunnel



\## Status

\- Awaiting DNS propagation

\- Tunnel tested and running successfully



\## Next Steps

\- Confirm site accessible at https://matteilla.xyz

\- Update WordPress site URL to matteilla.xyz

\- Configure tunnel as systemd service for auto-start on reboot

