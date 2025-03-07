# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /order-server

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_DEBUG 1
ENV PYTHONUNBUFFERED 1

CMD [ "python3", "-u", "-m" , "flask", "run", "--host=0.0.0.0"]