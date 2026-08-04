# Sudo misconfiguration

Lab environment for the full walkthrough at [pwnmi.com/labs/sudo-misconfiguration/](https://pwnmi.com/labs/sudo-misconfiguration/).

`analyst` was granted NOPASSWD sudo on `vim`, unrestricted, so config files could be edited without a password prompt each time. No CVE — this is a classic, generic Linux privesc technique class, not a disclosed vulnerability in a specific product.

## Quick start

```
docker compose up -d --build
docker compose exec -u analyst app bash
```

Drops you into a shell as the unprivileged `analyst` user — the same starting point as a foothold gained through some other means. No ports are published; everything happens inside the container via `docker compose exec`. See the full walkthrough on pwnmi.com for enumeration and exploitation steps.

```
docker compose down -v
```
when you're done.
