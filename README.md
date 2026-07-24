# pwnmihq/resources

Downloadable resources created for and referenced by [pwnmi.com](https://pwnmi.com) — configs, scripts, and local practice labs that don't belong embedded directly in the site itself.

## Structure

- `cve-labs/<CVE-ID>/` — isolated Docker Compose environments for specific CVEs covered in pwnmi.com's [Labs](https://pwnmi.com/labs/) pillar. Each one pairs with a full walkthrough on the site that covers setup, the vulnerability, and exploitation.

## Safety

Every lab here is built to run fully isolated: no ports published to the host network, no ports published at all beyond what's reachable from the Docker host itself. Run these only in an environment you control. The techniques demonstrated are for practicing against infrastructure you own — never point them at anything you don't have explicit authorization to test.
