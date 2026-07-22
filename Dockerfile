FROM ziggyds/iventoy:latest

LABEL maintainer="Claudiomfa"

LABEL org.opencontainers.image.title="iVentoy CMFA"

LABEL org.opencontainers.image.description="Automatic data synchronization for iVentoy"

LABEL org.opencontainers.image.source="https://github.com/Claudiomfa/iventoy_cmfa"

RUN mkdir -p /cmfa

RUN cp -a /app/data /cmfa/default-data

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY sync-data.sh /cmfa/
COPY backup.sh /cmfa/
COPY restore.sh /cmfa/
COPY functions.sh /cmfa/
COPY cmfa.conf /cmfa/

RUN chmod +x /docker-entrypoint.sh

RUN chmod +x /cmfa/*.sh

CMD ["/bin/sh","-c","/docker-entrypoint.sh"]
