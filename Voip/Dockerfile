FROM ubuntu
RUN apt-get update \
        && apt-get -y install asterisk \
        && apt-get -y install vim

COPY conf/    /etc/asterisk/

EXPOSE 5060/udp
EXPOSE 5060/tcp
EXPOSE 4569/udp
EXPOSE 4569/tcp
EXPOSE 16384-16394/udp

CMD ["/usr/sbin/asterisk", "-f"]
