server {
         root /etc/nginx/siteWeb/www;
         index index.html index.htm;

         server_name www.wt7.ephec-ti.be wt7.ephec-ti.be;

         location / {
                 try_files $uri $uri/ =404;
         }


    listen [::]:443 ssl ipv6only=on; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/wt7.ephec-ti.be/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/wt7.ephec-ti.be/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}

server {
         listen 43;
         listen [::]:43;
         root /etc/nginx/siteWeb/www;
         index index.html index.htm;

         server_name www.wt7.ephec-ti.be;

         location / {
                 try_files $uri $uri/ =404;
         }

}
server {
    if ($host = wt7.ephec-ti.be) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


         listen 80;
         listen [::]:80;

         server_name www.wt7.ephec-ti.be wt7.ephec-ti.be;
    return 404; # managed by Certbot


}
