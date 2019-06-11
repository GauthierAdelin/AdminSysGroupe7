server {
         listen 443;
         listen [::]:443;
         root /etc/nginx/siteWeb/intranet;
         index index.html index.htm;

         server_name intranet.wt7.ephec-ti.be;

         location / {
                allow 172.17.0.1;
                deny all;
                 try_files $uri $uri/ =404;
         }

}
