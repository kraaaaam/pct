FROM python:3.7

ENV PYTHONUNBUFFERRED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /api
WORKDIR /api
COPY ./api /api

