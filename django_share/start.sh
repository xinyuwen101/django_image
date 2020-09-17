#!/bin/bash
python manage.py collectstatic --noinput &&
uwsgi --ini /var/www/html/django_share/uwsgi.ini
