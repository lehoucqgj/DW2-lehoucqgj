FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install apache2 -y

COPY ./html /var/www/html/

RUN date >> /var/www/html/buildtime.txt



EXPOSE 81/tcp

CMD service apache2 start && bash
