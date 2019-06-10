FROM ubuntu

MAINTAINER Gauthier Adelin <HE201511@students.ephec.be>

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y php-fpm php-mysql
RUN apt-getinstall -y vi


COPY siteWeb/www/* /etc/nginx/siteWeb/www/
COPY /confDoss/wt7.ephec-ti.be /etc/nginx/sites-available/
COPY /confDoss/b2b.wt7.ephec-ti.be /etc/nginx/sites-available/
COPY /confDoss/wt7.ephec-ti.be /etc/nginx/sites-enabled/
COPY /confDoss/b2b.wt7.ephec-ti.be /etc/nginx/sites-enabled/

RUN sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.2/fpm/php.ini

RUN nginx -t

EXPOSE 80 443 
CMD nginx -g "daemon off;"


sudo docker run --name=nginx -d -p 80:80 -p 443:443 -v /home/gauthiera/siteWeb:/usr/share/nginx/html:rw nginx
sudo docker exec -ti nginx bash
