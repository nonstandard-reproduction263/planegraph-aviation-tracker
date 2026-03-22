# Security Policy

## Supported Versions

Planegraph is pre-1.0 software under active development. Security fixes are applied to the `main` branch only.

| Version | Supported |
|---------|-----------|
| main branch (latest) | ✅ |
| Older commits | ❌ |

## Reporting a Vulnerability

If you discover a security vulnerability, please report it responsibly:

1. **Do not** open a public GitHub issue for security vulnerabilities.
2. Email the maintainer directly at the address listed in the GitHub profile, or use GitHub's private vulnerability reporting feature.
3. Include a clear description of the vulnerability, steps to reproduce, and any potential impact.

You should expect an initial response within 72 hours. If the vulnerability is confirmed, a fix will be prioritized and released as soon as practical.

## Scope

Planegraph is designed as a self-hosted, single-user appliance running on a local network. The threat model assumes trusted-network deployment — there is no authentication layer, no multi-tenancy, and no public-facing exposure by default.

Security-relevant areas include:

- **PostgreSQL credentials** stored in `.env` (gitignored, never committed)
- **Network exposure** via Docker published ports and the nginx reverse proxy
- **OS hardening** documented in `docs/security/cis-v8-ig1-baseline.md`
- **SDR hardware access** requiring USB device permissions

## Hardening Documentation

See `docs/deployment/02-security-hardening.md` for the full security hardening guide, which covers SSH lockdown, UFW firewall rules, auditd, AIDE, fail2ban, sysctl hardening, and Docker daemon configuration.
