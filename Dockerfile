FROM ubuntu:20.04

RUN apt update
RUN apt install apache2 -y

COPY ./html /var/www/

RUN date >> /var/www/html/buildtime.txt

ENV DEBIAN_FRONTEND=noninteractive


EXPOSE 81/tcp

CMD service apache2 start && bash
