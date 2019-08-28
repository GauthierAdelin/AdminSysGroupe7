server {
 listen 443 ssl http2;
    listen [::]:443 ssl http2; # managed by Certbot
           ssl_certificate /etc/letsencrypt/live/intranet.gauthier.ephec-ti.be/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/intranet.gauthier.ephec-ti.be/privkey.pem; # managed by Certbot
         root /etc/nginx/siteWeb/intranet;
         index index.html index.htm;

         server_name intranet.gauthier.ephec-ti.be gauthier.intranet.wt7.ephec-ti.be;

         location / {
                allow 172.17.0.1;
                deny all;
                 try_files $uri $uri/ =404;
         }

}
