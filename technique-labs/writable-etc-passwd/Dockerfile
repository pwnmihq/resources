FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends openssl && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash analyst

# The vulnerable misconfiguration: a config-management run meant to fix
# ownership under /etc/app-config globbed too broadly and left
# /etc/passwd itself world-writable.
RUN chmod 666 /etc/passwd

USER root
WORKDIR /home/analyst
CMD ["tail", "-f", "/dev/null"]
