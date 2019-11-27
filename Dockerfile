FROM debian:jessie-slim
MAINTAINER Joshua Sierles <joshua@chatterbug.com>

WORKDIR /usr/local/bin

RUN apt-get update && apt-get install -y wget netcat

COPY sc sc
COPY start.sh start.sh
RUN chmod a+x start.sh

EXPOSE 26000 4445

CMD /usr/local/bin/start.sh
