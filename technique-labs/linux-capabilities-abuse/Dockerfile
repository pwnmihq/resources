FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends python3 libcap2-bin && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash analyst

# The vulnerable misconfiguration: a deploy script needed to drop
# privileges from a specific helper, so someone ran setcap on the
# python3 interpreter itself instead of a narrowly-scoped compiled
# helper binary -- granting that power to every script python3 ever runs.
RUN REAL_PY=$(readlink -f "$(command -v python3)") && setcap cap_setuid+ep "$REAL_PY"

USER root
WORKDIR /home/analyst
CMD ["tail", "-f", "/dev/null"]
