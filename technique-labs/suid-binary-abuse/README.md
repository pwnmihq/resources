# SUID binary abuse

Lab environment for the full walkthrough at [pwnmi.com/labs/suid-binary-abuse/](https://pwnmi.com/labs/suid-binary-abuse/).

`find` left SUID-root after a one-off maintenance task, never reverted. No CVE — this is a classic, generic Linux privesc technique class, not a disclosed vulnerability in a specific product.

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
