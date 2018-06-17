FROM debian:stretch-slim

LABEL maintainer="calvintam236"
LABEL description="rTorrent in Docker. This is a BitTorrent server & client."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl git autoconf automake build-essential libcppunit-dev libcurl4-openssl-dev libncursesw5-dev libssl-dev libtool pkg-config libxmlrpc-c++8-dev zlib1g-dev \
    && git clone https://github.com/rakshasa/libtorrent.git \
    && cd libtorrent \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && rm -rf libtorrent \
    && curl -L -O https://github.com/rakshasa/rtorrent/releases/download/v0.9.7/rtorrent-0.9.7.tar.gz \
    && tar -xvf rtorrent-0.9.7.tar.gz \
    && cd rtorrent-0.9.7 \
    && ./autogen.sh \
    && ./configure --with-xmlrpc-c \
    && make \
    && make install \
    && cd .. \
    && rm -rf rtorrent-0.9.7 \
    && apt-get -y remove ca-certificates curl git autoconf automake build-essential libncursesw5-dev libcurl4-openssl-dev libssl-dev libtool pkg-config libxmlrpc-c++8-dev zlib1g-dev \
    && apt-get -y --no-install-recommends install libssl1.1 libtool-bin libxmlrpc-c++8v5 \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

EXPOSE 5000

ENTRYPOINT ["rtorrent"]
CMD ["-h"]
