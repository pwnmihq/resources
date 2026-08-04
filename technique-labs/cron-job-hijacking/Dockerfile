FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends cron && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash analyst

RUN mkdir -p /opt/scripts /opt/app /var/backups
COPY backup.sh /opt/scripts/backup.sh

# The vulnerable misconfiguration: root's crontab runs this script every
# minute, but it was left world-writable (chmod 777 instead of 700)
# after being copied in during setup.
RUN chmod 777 /opt/scripts/backup.sh

RUN echo "* * * * * root /opt/scripts/backup.sh >> /var/log/backup.log 2>&1" > /etc/cron.d/backup && \
    chmod 644 /etc/cron.d/backup && \
    touch /var/log/backup.log

CMD ["cron", "-f"]
