FROM debian:jessie-slim
MAINTAINER Joshua Sierles <joshua@chatterbug.com>

WORKDIR /usr/local/bin

COPY sc sc
COPY start.sh start.sh
RUN chmod a+x start.sh

EXPOSE 4445

ENTRYPOINT ["/usr/local/bin/start.sh"]
