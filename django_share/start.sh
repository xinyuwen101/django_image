#!/bin/bash
python manage.py collectstatic --noinput &&
uwsgi --ini /home/ubuntu/django_share/uwsgi.ini
