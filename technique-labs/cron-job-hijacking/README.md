# Cron job hijacking

Lab environment for the full walkthrough at [pwnmi.com/labs/cron-job-hijacking/](https://pwnmi.com/labs/cron-job-hijacking/).

Root's crontab runs `/opt/scripts/backup.sh` every minute; the script was left world-writable after being copied in during setup. No CVE — this is a classic, generic Linux privesc technique class, not a disclosed vulnerability in a specific product.

## Quick start

```
docker compose up -d --build
docker compose exec -u analyst app bash
```

Drops you into a shell as the unprivileged `analyst` user — the same starting point as a foothold gained through some other means. No ports are published; everything happens inside the container via `docker compose exec`. See the full walkthrough on pwnmi.com for enumeration and exploitation steps — this one involves waiting up to 60 seconds for the next cron tick, which is a genuine part of the exercise, not a bug.

```
docker compose down -v
```
when you're done.
