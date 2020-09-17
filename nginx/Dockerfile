FROM nginx

RUN rm /etc/nginx/conf.d/default.conf \
&& mkdir -p /usr/share/nginx/html/static \
&& mkdir -p /usr/share/nginx/html/media

RUN chown -R www-data:www-data /usr/share/nginx/html/media \
&& chmod -R 775 /usr/share/nginx/html/media

ADD ./nginx.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]