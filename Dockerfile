FROM debian:jessie-slim
MAINTAINER Joshua Sierles <joshua@chatterbug.com>

ARG VERSION=4.5.4

WORKDIR /usr/local/bin

RUN apt-get update && apt-get install -y wget nc

RUN wget https://saucelabs.com/downloads/sc-$VERSION-linux.tar.gz -O - | tar -xz
RUN mv sc-$VERSION-linux/bin/sc ./ && rm -rf sc-$VERSION-linux

COPY start.sh start.sh
RUN chmod a+x start.sh

EXPOSE 26000

ENTRYPOINT ["/usr/local/bin/start.sh"]
