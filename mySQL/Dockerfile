FROM ubuntu 

RUN apt-get update \
RUN apt-get install -y mysql-server
RUN apt-get install -y vim


ADD client_WT.sql /tmp/

RUN service mysql start 

EXPOSE 3306/tcp
CMD ["/usr/bin/mysqld_safe"]


1 Cr�er fichier en cr�ant la base de donn�e (en .sql) (cr�er des utilisateurs et des blabla)
2 Cr�er dockerfile (	1. Install sql
			2. Installer vim
			3. Copier le fichier sql dans le container (/tmp)
			3. RUN du service mysql
			4. CMD 
		   )
3 Build le dockerFile (sudo docker build -t [nom_de_l'image (� inventer)]  .)
4 sudo docker run --name=mysql -d mysql
5 On rentre dans le container (bash)
6 mysql -u root < client_WT.sql (on importe ici le .sql dans la bdd)
7 mysql -u root (rentrer dans mysql)
8 use [nom_de_la_bdd]
9 exit (pour revenir dans le container)

10 RDV dans etc/mysql/mysql.conf.d/mysql.conf (l'ouvrir et mettre en commentaire la
						ligne : bind 0.0.0.0)

11 restart les brols /!\ depuis le container (service mysql restart)
12 red�marrer le container mysql

13 Sudo docker inspect mysql (pour connaitre l'adresse ip du container (on en a besoin pour dans le html))


virtual hosting : plusieurs sites web qui se trouvent sur le m�me serveur (utilisation de num�ro de port diff�rents)
sudo docker run --name=nginx -d -p 80:80 -p 81:81 -p 82:82


cerbot (apr�s dns)
b2b en container
mail

red�marrer fail2ban : fail2ban-client reload
Checker si fail2bal est actif : fail2ban-client status

mysql -u root
nginx -s reload