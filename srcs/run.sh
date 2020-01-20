# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 01:10:42 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/20 18:06:30 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

sh init/unzip.sh
echo -e ========="\033[1;34m Launching "MySql" \033[0m"=========
service mysql start
echo -e ======="\033[1;34m Launching "Php7.3-fpm" \033[0m"=========
echo -e ["\033[32m ok \033[0m"] Starting Php7.3-fpm: Php7.3-fpm.
service php7.3-fpm start
mysql -u root -p123 < init/init_mysql.sql
echo -e ======= "\033[1;34m Generation "SSL KEY" \033[0m"=========
sh init/ssl.sh
echo -e ["\033[32m ok \033[0m"] Generating a RSA private key
echo -e ========="\033[1;34m Launching "Nginx" \033[0m"=========
service nginx start
echo -e  "\033[4;32m ===WORDPRESS SERVER OK=== \033[0m"
bash
