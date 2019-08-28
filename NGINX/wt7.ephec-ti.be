server {
        listen 443 ssl http2;
    listen [::]:443 ssl http2; # managed by Certbot
           ssl_certificate /etc/letsencrypt/live/www.gauthier.ephec-ti.be/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/www.gauthier.ephec-ti.be/privkey.pem; # managed by Certbot

         root /etc/nginx/siteWeb/www;
         index index.html index.htm;

         server_name gauthier.ephec-ti.be www.gauthier.ephec-ti.be;

         location / {
                 try_files $uri $uri/ =404;
         }

    # managed by Certbot
#    ssl_certificate /etc/letsencrypt/live/wt7.ephec-ti.be/fullchain.pem; # managed by Certbot
 #   ssl_certificate_key /etc/letsencrypt/live/wt7.ephec-ti.be/privkey.pem; # managed by Certbot
    #include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
   # ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}

server {
         listen 80;
 listen [::]:80;
         root /etc/nginx/siteWeb/www;
         index index.html index.htm;

         server_name gauthier.ephec-ti.be www.gauthier.ephec-ti.be;

         location / {
                 try_files $uri $uri/ =404;
         }

}
