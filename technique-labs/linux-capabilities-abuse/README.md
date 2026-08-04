# Linux capabilities abuse

Lab environment for the full walkthrough at [pwnmi.com/labs/linux-capabilities-abuse/](https://pwnmi.com/labs/linux-capabilities-abuse/).

`cap_setuid+ep` was left on the `python3` interpreter itself, instead of a narrowly-scoped compiled helper binary — granting that power to every script python3 ever runs. No CVE — this is a classic, generic Linux privesc technique class, not a disclosed vulnerability in a specific product.

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
