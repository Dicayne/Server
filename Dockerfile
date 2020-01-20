# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 00:58:54 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/20 15:35:42 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx default-mysql-server php php-mbstring php-fpm php-mysql openssl -y


COPY ./srcs/unzip.sh init/
COPY ./srcs/run.sh init/
COPY ./srcs/init_mysql.sql init/
COPY ./srcs/ssl.sh init/

COPY ./srcs/latest.tar.gz var/www/html/
COPY ./srcs/phpmyadmin.tar var/www/html/

COPY ./srcs/nginx.conf etc/nginx/nginx.conf
COPY ./srcs/wordpress /etc/nginx/sites-available/
COPY ./srcs/phpmyadmin /etc/nginx/sites-available/
COPY ./srcs/default /etc/nginx/sites-available/

EXPOSE 80
EXPOSE 443
ENTRYPOINT bash init/run.sh
