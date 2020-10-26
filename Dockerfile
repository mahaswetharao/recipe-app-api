FROM python:3.7-alpine
MAINTAINER ME-THE-DEV

ENV PYTHONUNBUFFERED 1

#ENV http_proxy 'http://PITC-Zscaler-India-Bangalore-GRC.proxy.corporate.ge.com:8080'
#ENV https_proxy 'http://PITC-Zscaler-India-Bangalore-GRC.proxy.corporate.ge.com:8080'

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .temp-build-deps \
        gcc libc-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt
RUN apk del .temp-build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
