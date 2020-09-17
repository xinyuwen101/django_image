FROM python

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /var/www/html/django_share

WORKDIR /var/www/html/django_share

ADD . /var/www/html/django_share

RUN chown -R www-data:www-data /var/www/html/django_share/media \
&& chmod -R 775 /var/www/html/django_share/media

RUN pip install -r requirements.txt

RUN chmod +x ./start.sh
