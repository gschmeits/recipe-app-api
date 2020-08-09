FROM python:3.7-alpine3.8
MAINTAINER Ger Schmeits

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN pip install --upgrade pip

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user


