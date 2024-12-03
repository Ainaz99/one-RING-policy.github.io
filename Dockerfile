FROM nginx:1.17.0

COPY public /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/.
