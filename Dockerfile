FROM ubuntu

RUN mkdir -p /app/code

RUN apt-get -y update
RUN apt-get -y install pylint

WORKDIR /app

ENTRYPOINT [ "pylint" ]
