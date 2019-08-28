server {
         listen 80;
         listen [::]:80;
         root /etc/nginx/siteWeb/b2b;
         index index.php index.html index.htm;

         server_name b2b.gauthier.ephec-ti.be www.b2b.gauthier.ephec-ti.be;

         location / {
                 try_files $uri $uri/ =404;
         }
                location ~ \.php$ {
                include fastcgi_params;
                fastcgi_param SCRIPT_FILENAME $document_root/$fastcgi_script_name;
                fastcgi_pass unix:/run/php/php7.2-fpm.sock;
        }




}


server {
 listen 443 ssl http2;
    listen [::]:443 ssl http2; # managed by Certbot
           ssl_certificate /etc/letsencrypt/live/b2b.gauthier.ephec-ti.be/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/b2b.gauthier.ephec-ti.be/privkey.pem; # managed by Certbot
        server_name b2b.gauthier.ephec-ti.be www.b2b.gauthier.ephec-ti.be;


        root /etc/nginx/siteWeb/b2b;
        index index.php index.html index.htm;

        location / {
                try_files $uri $uri/ =404;
        }

        location ~ \.php$ {
                include fastcgi_params;
                fastcgi_param SCRIPT_FILENAME $document_root/$fastcgi_script_name;
                fastcgi_pass unix:/run/php/php7.2-fpm.sock;
        }
}
