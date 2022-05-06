# https://stackoverflow.com/questions/43764037/install-pylint-in-alpine-linux-based-docker-image
FROM python:3-alpine

RUN mkdir -p /app/code

RUN pip3 install -U pylint

WORKDIR /app

ENTRYPOINT [ "pylint" ]
