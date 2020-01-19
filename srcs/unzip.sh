# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    unzip.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/16 15:08:26 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/19 01:52:56 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo =========="\033[32m Unzip Package \033[0m"=========
cd var/www/html/
tar -xf phpmyadmin.tar
cp phpmyadmin/config.sample.inc.php phpmyadmin/config.inc.php
tar -xzf latest.tar.gz
rm -rf latest.tar.gz phpmyadmin.tar
rm /var/www/html/index*.html
chown -R www-data:www-data /var/www/html
