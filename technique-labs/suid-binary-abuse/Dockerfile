FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends findutils sudo && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash analyst

# The vulnerable misconfiguration: find left SUID-root, e.g. after a
# one-off maintenance task ("let ops search protected log dirs") that
# was never reverted.
RUN chmod u+s /usr/bin/find

USER root
WORKDIR /home/analyst
CMD ["tail", "-f", "/dev/null"]
