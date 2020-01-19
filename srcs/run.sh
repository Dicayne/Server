# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 01:10:42 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/19 01:39:03 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

sh init/unzip.sh
echo -e ========="\033[1;34m Launching "MySql" \033[0m"=========
service mysql start
echo -e ======="\033[1;34m Launching "Php7.3-fpm" \033[0m"=========
echo -e ["\033[32m ok \033[0m"] Starting Php7.3-fpm: Php7.3-fpm.
service php7.3-fpm start
mysql -u root -p123 < init/init_mysql.sql
echo -e ========="\033[1;34m Launching "Nginx" \033[0m"=========
service nginx start
bash
