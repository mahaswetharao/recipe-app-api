FROM python:3.7-alpine
MAINTAINER ME-THE-DEV

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN python -m pip install --proxy PITC-Zscaler-India-Bangalore-GRC.proxy.corporate.ge.com:8080 -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
