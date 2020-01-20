# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ssl.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/20 14:15:47 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/20 14:54:54 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cd etc/nginx
openssl req -x509 -out localhost.crt -keyout localhost.key \
	-newkey rsa:2048 -nodes -sha256 -subj '/CN=localhost'
