FROM armhf/debian

MAINTAINER pietro.pizzo@gmail.com

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y samba samba-client && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /usr/share/doc* /usr/share/man/* /usr/share/info/*

COPY startup.sh /

EXPOSE 445/tcp 137/udp 138/udp 139/tcp

ENTRYPOINT ["/startup.sh"]
