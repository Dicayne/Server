# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 00:58:54 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/23 14:16:03 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx default-mysql-server php php-mbstring php-fpm php-mysql openssl nano -y


COPY ./srcs/sh_unzip.sh init/
COPY ./srcs/sh_run.sh init/
COPY ./srcs/sh_ssl.sh init/
COPY ./srcs/sh_default.sh init/
COPY ./srcs/sh_onoff.sh init/
COPY ./srcs/init_mysql.sql init/
COPY ./srcs/index.htm init/
COPY ./srcs/latest.tar.gz var/www/html/
COPY ./srcs/phpmyadmin.tar var/www/html/

COPY ./srcs/nginx.conf etc/nginx/nginx.conf
COPY ./srcs/defaulton /etc/nginx/sites-available/default
COPY ./srcs/defaulton init/
COPY ./srcs/defaultoff init/

EXPOSE 80
EXPOSE 443
ENTRYPOINT bash init/sh_run.sh
