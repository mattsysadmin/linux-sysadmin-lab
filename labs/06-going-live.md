\# Lab 06 - Going Live



\## Date

2026-04-23



\## Objective

Expose WordPress site to the internet with a real domain and SSL.



\## Steps Completed

\- Purchased domain matteilla.xyz on Porkbun

\- Added matteilla.xyz to Cloudflare

\- Updated nameservers at Porkbun to Cloudflare

\- Created named Cloudflare Tunnel (matteilla)

\- Configured tunnel as systemd service (auto-starts on boot)

\- Routed DNS for matteilla.xyz and www.matteilla.xyz to tunnel

\- Fixed ERR\_TOO\_MANY\_REDIRECTS by setting SSL to Full in Cloudflare

\- Updated WordPress site URL to https://matteilla.xyz

\- Installed W3 Total Cache plugin



\## Performance

\- Baseline TTFB: 430ms

\- Cached TTFB: \~300ms



\## Verification

\- Site live at https://matteilla.xyz

\- SSL working via Cloudflare

\- Traffic routing confirmed through Cloudflare network



\## Next Steps

\- Monitor server stability

\- Explore WordPress customization

\- Consider VPS migration for true 24/7 uptime

