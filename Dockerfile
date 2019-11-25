FROM debian:jessie-slim
MAINTAINER Joshua Sierles <joshua@chatterbug.com>

ENV workdir /usr/local/sauce-connect

ARG VERSION=4.5.4

WORKDIR ${workdir}

RUN apt-get update && apt-get install -y wget

RUN wget https://saucelabs.com/downloads/sc-$VERSION-linux.tar.gz -O - | tar -xz
RUN mv sc-$SC_VERSION-linux/* ./ && rm -rf sc-$VERSION-linux

RUN export SC=$workdir

ADD connect.sh $workdir
RUN chmod a+x $workdir/connect.sh

ENTRYPOINT ["/usr/local/sauce-connect/connect.sh"]

CMD ["--help"]
