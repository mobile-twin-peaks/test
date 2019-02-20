#FROM yijun/gitpod:fast
FROM gitpod/workspace-full
USER root
RUN apt-get update && apt-get install -y strace \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER gitpod
