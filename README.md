# pwnmihq/resources

Downloadable resources created for and referenced by [pwnmi.com](https://pwnmi.com) — configs, scripts, and local practice labs that don't belong embedded directly in the site itself.

## Structure

- `cve-labs/<CVE-ID>/` — isolated environments for specific CVEs covered in pwnmi.com's [Labs](https://pwnmi.com/labs/) pillar. Each one pairs with a full walkthrough on the site that covers setup, the vulnerability, and exploitation. Most are Docker Compose environments; kernel-level CVEs (which a container can't isolate you from) use a disposable-VM setup instead — check each lab's own README.
- `technique-labs/<slug>/` — deliberately misconfigured Docker Compose environments teaching a generic privilege-escalation technique class (SUID abuse, sudo misconfiguration, cron hijacking, capabilities abuse, writable `/etc/passwd`, etc.), not tied to any CVE. Access is via `docker compose exec -u analyst app bash` — you land as an unprivileged user, the same starting point as a foothold gained through some other means, and work the technique from there.

## Safety

Docker-based labs run fully isolated: no ports published to the host network, no ports published at all beyond what's reachable from the Docker host itself. VM-based labs (kernel CVEs) carry different, heavier risk — a successful exploit gets real root on the VM's actual kernel, not a sandboxed process — and each one calls out the snapshot/disposal discipline it needs. Run everything here only in an environment you control. The techniques demonstrated are for practicing against infrastructure you own — never point them at anything you don't have explicit authorization to test.
