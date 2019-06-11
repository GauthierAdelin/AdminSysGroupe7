FROM ubuntu

RUN apt-get update \
        && apt-get -y install vim \
        && apt-get -y install squid

RUN sed -i -e 's/http_access deny all/http_access allow all/g' /etc/squid/squid.conf
RUN sed -i -e '992i\acl badSites dstdomain .facebook.com .instagram.com' /etc/squid/squid.conf
RUN sed -i -e '1195i\http_access deny badSites' /etc/squid/squid.conf

EXPOSE 3128

CMD ["squid", "-N"]