#!/bin/bash
# Placeholder nightly backup script, run by root via cron.
tar -czf /var/backups/app-$(date +%s).tar.gz /opt/app 2>/dev/null || true
