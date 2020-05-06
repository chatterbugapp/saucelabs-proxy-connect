FROM debian:10.3-slim
MAINTAINER Joshua Sierles <joshua@chatterbug.com>

RUN apt-get update && apt-get install -y ca-certificates
WORKDIR /usr/local/bin

COPY sc sc
COPY start.sh start.sh
RUN chmod a+x start.sh

EXPOSE 4445

ENTRYPOINT ["/usr/local/bin/start.sh"]
