#FROM gitpod/workspace-full
#FROM stemn/development-environment:latest
FROM yijun/gitpod
# Give control to gitpod
USER root

# Gitpod configuration
ENV GITPOD_HOME /home/gitpod
ENV GITPOD_UID_GID 33333

# Keep the stemn user configuration
RUN chown -R $GITPOD_UID_GID:$GITPOD_UID_GID $GITPOD_HOME

# Remove root user config that gitpod copies over
RUN rm -rf /root
RUN mkdir -p /root
RUN touch /root/dontremove