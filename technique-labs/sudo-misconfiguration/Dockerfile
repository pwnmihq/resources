FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends sudo vim && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash analyst

# The vulnerable misconfiguration: ops gave analyst NOPASSWD sudo on vim
# so they could edit config files without a password prompt each time,
# without restricting it to a specific path or using vim's restricted mode.
RUN echo "analyst ALL=(ALL) NOPASSWD: /usr/bin/vim" > /etc/sudoers.d/analyst-vim && \
    chmod 440 /etc/sudoers.d/analyst-vim

USER root
WORKDIR /home/analyst
CMD ["tail", "-f", "/dev/null"]
