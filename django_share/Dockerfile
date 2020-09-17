FROM python

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /home/ubuntu/django_share

WORKDIR /home/ubuntu/django_share

ADD . /home/ubuntu/django_share

RUN pip install -r requirements.txt

RUN chmod +x ./start.sh