FROM debian:buster

COPY srcs/ init

RUN apt-get update -y \
	&& apt-get install nginx emacs -y \
	&& service nginx start \
