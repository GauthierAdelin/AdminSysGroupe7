server {
    if ($host = b2b.wt7.ephec-ti.be) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


         listen 80;
         listen [::]:80;
         root /etc/nginx/siteWeb/b2b;
         index index.php index.html index.htm;

         server_name b2b.wt7.ephec-ti.be www.b2b.wt7.ephec-ti.be;

         location / {
                 try_files $uri $uri/ =404;
         }
                location ~ \.php$ {
                include fastcgi_params;
                fastcgi_param SCRIPT_FILENAME $document_root/$fastcgi_script_name;
                fastcgi_pass unix:/run/php/php7.2-fpm.sock;
        }




}
