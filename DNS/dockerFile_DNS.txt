FROM ubuntu

RUN apt-get update
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y vim

COPY /confDoss/db.wt7.ephec-ti.be /etc/bind/
COPY /confDoss/named.conf.options /etc/bind/
COPY /confDoss/named.conf.local /etc/bind/
COPY /configTestDNS/named.conf.default-zones /etc/bind/

WORKDIR /etc/bind

VOLUME /etc/bin

EXPOSE 53/udp 53/tcp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]





sudo docker run --name=bind -d -p 53:53 -v /home/gauthiera/bind:/bind:rw bind